import 'dart:async';
import 'dart:convert';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_router/go_router.dart';
import 'package:hive_ce_flutter/hive_ce_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

import '../../../core/constant/api_link.dart';
import '../../../core/context/global.dart';
import '../../../core/services/hive/box_key.dart';
import '../../../core/widget/widget_dailog.dart';
import '../../../injection_container.dart';
import '../../../l10n/app_localizations.dart';
import '../../../main.dart';
import '../../home/domain/usecase/home_usecase.dart';
import '../../layout/domain/model/user_model.dart';
import '../domain/model/transactions_model.dart';
import '../domain/model/wallet_response_dto.dart';
import '../domain/usecase/wallet_usecase.dart';
import '../pages/wallet_otp_screen.dart';
import 'enum_socit.dart';

part 'wallet_state.dart';
part 'wallet_cubit.freezed.dart';

class WalletCubit extends Cubit<WalletState> {
  final WalletUsecase walletUsecase;
  final HomeUsecase homeUsecase;

  WebSocketChannel? _channel;
  String brodcast = '';
  bool _isManuallyClosed = false;
  final formKey = GlobalKey<FormState>();
  ValueNotifier<TextEditingController> mobile = ValueNotifier(TextEditingController());
  TextEditingController ammopuntController = TextEditingController();
  TextEditingController otp = TextEditingController();

  ScrollController scrollController = ScrollController();
  int pageIndex = 1;

  WalletCubit({required this.walletUsecase, required this.homeUsecase}) : super(const WalletState.initial()) {
    Future.wait([handelMobile(), connect()]);
  }

  Future<void> handelMobile() async {
    Driver driver = sl<Box<Driver>>().get(BoxKey.user)!;
    mobile.value.text = driver.phone ?? '';
  }

  // Function To Charger Wallet Mobile
  Future<void> chargerWalletMobile() async {
    try {
      if (!formKey.currentState!.validate()) {
        return;
      }
      SmartDialog.showLoading(msg: AppLocalizations.of(GlobalContext.context)!.loading);
      final result = await walletUsecase.chargerWallet(ammopuntController.text, mobile.value.text, 'mobile_wallet');
      result.fold(
        (failure) {
          SmartDialog.dismiss();
          SmartDialog.show(
            builder: (context) => WidgetDilog(
              isError: true,
              title: AppLocalizations.of(GlobalContext.context)!.warning,
              message: failure.message,
              cancelText: AppLocalizations.of(GlobalContext.context)!.back,
              onCancel: () => SmartDialog.dismiss(),
            ),
          );
        },
        (success) async {
          GlobalContext.context.pop();
          SmartDialog.dismiss();
          showDialog(
            context: GlobalContext.context,
            builder: (context) => WalletOtpDialog(phoneNumber: mobile.value.text, id: success.data!),
          );
        },
      );
    } catch (e) {
      SmartDialog.dismiss();
      SmartDialog.show(
        builder: (context) => WidgetDilog(
          title: AppLocalizations.of(GlobalContext.context)!.warning,
          message: 'Server Error In Charger Wallet Section : $e',
          cancelText: AppLocalizations.of(GlobalContext.context)!.back,
          onCancel: () => SmartDialog.dismiss(),
        ),
      );
      log('Server Error In Charger Wallet Section : $e');
    }
  }

  // Function To Charger Wallet Bank
  Future<void> chargerWalletBank() async {
    try {
      if (!formKey.currentState!.validate()) {
        return;
      }
      SmartDialog.showLoading(msg: AppLocalizations.of(GlobalContext.context)!.loading);
      final result = await walletUsecase.chargerWallet(ammopuntController.text, mobile.value.text, 'credit');
      result.fold(
        (failure) {
          SmartDialog.dismiss();
          SmartDialog.show(
            builder: (context) => WidgetDilog(
              isError: true,
              title: AppLocalizations.of(GlobalContext.context)!.warning,
              message: failure.message,
              cancelText: AppLocalizations.of(GlobalContext.context)!.back,
              onCancel: () => SmartDialog.dismiss(),
            ),
          );
        },
        (success) async {
          SmartDialog.dismiss();
          final url = Uri.parse(success.data!);
          await launchUrl(url);
        },
      );
    } catch (e) {
      SmartDialog.dismiss();
      SmartDialog.show(
        builder: (context) => WidgetDilog(
          title: AppLocalizations.of(GlobalContext.context)!.warning,
          message: 'Server Error In Charger Wallet Section : $e',
          cancelText: AppLocalizations.of(GlobalContext.context)!.back,
          onCancel: () => SmartDialog.dismiss(),
        ),
      );
      log('Server Error In Charger Wallet Section : $e');
    }
  }

  // Function To Payment CallBack
  Future<void> paymentCallback(String id) async {
    try {
      SmartDialog.showLoading(msg: AppLocalizations.of(GlobalContext.context)!.loading);
      final result = await walletUsecase.paymentCallback(id, otp.text);
      result.fold(
        (failure) {
          SmartDialog.dismiss();
          SmartDialog.show(
            builder: (context) => WidgetDilog(
              isError: true,
              title: AppLocalizations.of(GlobalContext.context)!.warning,
              message: failure.message,
              cancelText: AppLocalizations.of(GlobalContext.context)!.back,
              onCancel: () => SmartDialog.dismiss(),
            ),
          );
        },
        (success) async {
          GlobalContext.context.pop();
          SmartDialog.dismiss();
          getAllTransaction();
        },
      );
    } catch (e) {
      SmartDialog.dismiss();
      SmartDialog.show(
        builder: (context) => WidgetDilog(
          title: AppLocalizations.of(GlobalContext.context)!.warning,
          message: 'Server Error In Charger Wallet Section : $e',
          cancelText: AppLocalizations.of(GlobalContext.context)!.back,
          onCancel: () => SmartDialog.dismiss(),
        ),
      );
      log('Server Error In Charger Wallet Section : $e');
    }
  }

  // Function To Get All Transaction For User Wallet
  Future<void> getAllTransaction({bool? loadMore}) async {
    try {
      if (loadMore != true) {
        emit(const _LoadingTransactionWallet());
        final result = await walletUsecase.transactionsWallet(pageIndex);
        result.fold((failure) => emit(_ErrorTransactionWallet(failure.message)), (success) {
          _changeIndexPage();
          emit(_LoadedTransactionWallet(data: success.data!));
        });
      } else {
        final currentState = state;
        if (currentState is _LoadedTransactionWallet) {
          if ((currentState.data.payload?.pagination?.lastPage ?? 0) >= pageIndex) {
            emit(_LoadedTransactionWallet(data: currentState.data, hasMore: true));
            final result = await walletUsecase.transactionsWallet(pageIndex);
            result.fold((failure) => emit(_ErrorTransactionWallet(failure.message)), (success) {
              _changeIndexPage();
              List<Transaction>? currentTransactions = List.from(currentState.data.payload?.transactions ?? []);
              final newTransactions = success.data?.payload?.transactions ?? [];
              currentTransactions.addAll(newTransactions);
              final updatedPayload = currentState.data.payload!.copyWith(transactions: currentTransactions);
              final updatedData = currentState.data.copyWith(payload: updatedPayload);
              emit(_LoadedTransactionWallet(data: updatedData));
            });
          }
        }
      }
    } catch (e) {
      emit(_ErrorTransactionWallet('Server Error In Transaction Wallet Section : $e'));
      log('Server Error In Transaction Wallet Section : $e');
    }
  }

  void _changeIndexPage() {
    scrollController.addListener(() {
      if (scrollController.position.pixels == scrollController.position.maxScrollExtent) {
        state.whenOrNull(
          loadedTransactionWallet: (data, _) {
            if (pageIndex <= (data.payload?.pagination?.lastPage ?? 1)) {
              pageIndex++;
              getAllTransaction(loadMore: true);
            }
          },
        );
      }
    });
  }

  // Cash Request
  Future<void> cashRequest() async {
    try {
      SmartDialog.showLoading(msg: AppLocalizations.of(GlobalContext.context)!.loading);
      final result = await walletUsecase.cashRequest(ammopuntController.text);
      result.fold(
        (failure) {
          SmartDialog.dismiss();
          SmartDialog.show(
            builder: (context) => WidgetDilog(
              isError: true,
              title: AppLocalizations.of(GlobalContext.context)!.warning,
              message: failure.message,
              cancelText: AppLocalizations.of(GlobalContext.context)!.back,
              onCancel: () => SmartDialog.dismiss(),
            ),
          );
        },
        (success) async {
          SmartDialog.dismiss();
          SmartDialog.show(
            builder: (context) => WidgetDilog(
              isError: true,
              title: AppLocalizations.of(GlobalContext.context)!.warning,
              message: AppLocalizations.of(GlobalContext.context)!.cashRequsetSuccess,
              cancelText: AppLocalizations.of(GlobalContext.context)!.back,
              onCancel: () => SmartDialog.dismiss(),
            ),
          );
        },
      );
    } catch (e) {
      SmartDialog.dismiss();
      SmartDialog.show(
        builder: (context) => WidgetDilog(
          title: AppLocalizations.of(GlobalContext.context)!.warning,
          message: 'Server Error In Cash Request Section : $e',
          cancelText: AppLocalizations.of(GlobalContext.context)!.back,
          onCancel: () => SmartDialog.dismiss(),
        ),
      );
      log('Server Error In Cash Request Section : $e');
    }
  }

  // ============================== Socit IO Function =========================================//

  // Connect To Channel
  Future<void> connect() async {
    _channel = WebSocketChannel.connect(Uri.parse(ApiLinks.socitUrl));
    _isManuallyClosed = false;

    _channel?.stream.listen(
      (message) async {
        log('📥 Received: $message');
        final data = jsonDecode(message);
        final eventString = data['event'] as String;
        final event = PusherWalletEventImpl.fromString(eventString);
        logger.w(eventString);
        switch (event) {
          case PusherWalletEvent.connectionEstablished:
            final socketData = jsonDecode(data['data']);
            log('✅ Connected with socket_id: ${socketData['socket_id']}');
            await broadcasting(socketData['socket_id']);
            break;
          case PusherWalletEvent.subscriptionSucceeded:
            log('✅ Connected with event: $eventString');
            break;
          case PusherWalletEvent.wallet:
            final decodedOuter = jsonDecode(message);
            final Map<String, dynamic> decodedInner = jsonDecode(decodedOuter['data']);
            final dto = WalletDataWrapper.fromJson(decodedInner);
            log('📦 wallet data: ${dto.data.payload}');
            await Future.delayed(const Duration(seconds: 2));
            if (dto.data.status == "Success") {
              pageIndex = 1;
              getAllTransaction();
            } else {
              SmartDialog.show(
                builder: (context) => WidgetDilog(title: 'Warning', message: 'Something went wrong while charging the wallet', cancelText: 'Back', onCancel: () => SmartDialog.dismiss()),
              );
            }
            break;
          case PusherWalletEvent.unknown:
            log('⚠️ Unhandled event: $eventString');
            break;
        }
      },
      onDone: () async {
        log('❌ Connection closed');
        if (!_isManuallyClosed) {
          await Future.delayed(const Duration(seconds: 2));
          log('🔁 Trying to reconnect...');
          connect();
        }
      },
      onError: (error) => log('❌ Error: $error'),
    );
  }

  // Subscribe To Private Channel
  Future<void> _subscribeToPrivateChannel(String auth) async {
    final userData = sl<Box<Driver>>().get(BoxKey.user);
    final subscribeMessage = {
      'event': 'pusher:subscribe',
      'data': {'auth': auth, 'channel': 'private-driver.${userData?.id}'},
    };
    _channel?.sink.add(jsonEncode(subscribeMessage));
    log('📤 Sent subscribe message');
  }

  // Broadcast To Channel
  Future<void> broadcasting(String socitId) async {
    final user = sl<Box<Driver>>().get(BoxKey.user);

    final result = await homeUsecase.broadcasting('${user?.id ?? 0}', socitId);
    result.fold(
      (failure) {
        logger.e(failure.message);
      },
      (result) {
        brodcast = result.data!;
        _subscribeToPrivateChannel(result.data!);
      },
    );
  }

  @override
  Future<void> close() {
    _channel?.sink.close();
    return super.close();
  }
}
