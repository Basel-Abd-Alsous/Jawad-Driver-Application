import 'dart:convert';
import 'dart:developer';

import 'package:audioplayers/audioplayers.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_ce_flutter/hive_ce_flutter.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

import '../../../core/constant/api_link.dart';
import '../../../core/context/global.dart';
import '../../../core/services/hive/box_key.dart';
import '../../../injection_container.dart';
import '../../../l10n/app_localizations.dart';
import '../../../main.dart';
import '../../home/domain/usecase/home_usecase.dart';
import '../../layout/domain/model/user_model.dart';
import '../domain/model/chat_model.dart';
import '../domain/usecase/chat_usecase.dart';

part 'chat_state.dart';
part 'chat_cubit.freezed.dart';

class ChatCubit extends Cubit<ChatState> {
  final ChatUsecase chatUsecase;
  final HomeUsecase homeUsecase;

  ChatCubit({required this.chatUsecase, required this.homeUsecase}) : super(const ChatState.initial()) {
    connect();
  }
  ValueNotifier<List<Message>> allMessage = ValueNotifier([]);
  TextEditingController messageController = TextEditingController();
  WebSocketChannel? _channel;
  String brodcast = '';
  bool _isManuallyClosed = false;
  AudioPlayer player = AudioPlayer();

  Future getAllChat(int id) async {
    try {
      SmartDialog.showLoading(msg: AppLocalizations.of(GlobalContext.context)!.loading);
      final result = await chatUsecase.getMessages(id);
      result.fold(
        (failure) {
          SmartDialog.dismiss();
          logger.e('Error Wgen Get All Messages :- ${failure.message.toString()}');
        },
        (success) {
          allMessage.value = success.data?.payload?.messages ?? [];
          SmartDialog.dismiss();
        },
      );
    } catch (e) {
      SmartDialog.dismiss();
      logger.e('Server Error Get Chat :- ${e.toString()}');
    }
  }

  Future sendMessage(int id) async {
    try {
      SmartDialog.showLoading(msg: AppLocalizations.of(GlobalContext.context)!.loading);
      final result = await chatUsecase.sendMessage(id, messageController.text);
      result.fold(
        (failure) {
          SmartDialog.dismiss();
          logger.e('Error Wgen Send Message  :- ${failure.message.toString()}');
        },
        (success) {
          messageController.clear();
          getAllChat(id);
        },
      );
    } catch (e) {
      SmartDialog.dismiss();
      logger.e('Server Error Send Message :- ${e.toString()}');
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
        logger.w(eventString);
        switch (eventString) {
          case 'pusher:connection_established':
            final socketData = jsonDecode(data['data']);
            log('✅ Connected with socket_id: ${socketData['socket_id']}');
            await broadcasting(socketData['socket_id']);
            break;
          case 'pusher_internal:subscription_succeeded':
            log('✅ Connected with event: $eventString');
            break;
          case 'chat.message':
            try {
              await player.play(AssetSource('sound.wav'));
              final decodedOuter = jsonDecode(message);
              final String? innerDataString = decodedOuter['data'];
              if (innerDataString != null) {
                final Map<String, dynamic> decodedInner = jsonDecode(innerDataString);
                final payload = decodedInner['payload'];
                if (payload != null) {
                  final messageData = Message.fromJson(payload);
                  final newListMessage = List<Message>.from(allMessage.value);
                  newListMessage.add(messageData);
                  allMessage.value = newListMessage;
                }
              }
            } catch (e, stack) {
              debugPrint('Error decoding chat.message: $e');
              debugPrint('$stack');
            }
            break;
          case 'unknown':
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
