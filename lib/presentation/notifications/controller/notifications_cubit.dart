import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../domain/model/notifications_model.dart';
import '../domain/uscase/notifications_usecase.dart';

part 'notifications_state.dart';
part 'notifications_cubit.freezed.dart';

class NotificationCubit extends Cubit<NotificationState> {
  final NotificationsUsecase notificationsUsecase;

  int pageIndex = 1;
  ScrollController scrollController = ScrollController();
  NotificationCubit({required this.notificationsUsecase}) : super(NotificationState.initial());

  // Function To Get All Notification
  Future<void> getAllNotification({bool? loadMore}) async {
    try {
      if (loadMore != true) {
        emit(_LoadingNotifications());
        final result = await notificationsUsecase(pageIndex);
        result.fold((failure) => emit(_ErrorNotifications(failure.message)), (success) {
          _changeIndexPage();
          emit(_LoadedNotifications(data: success.data!));
        });
      } else {
        final currentState = state;

        if (currentState is _LoadedNotifications) {
          if ((currentState.data.payload?.pagination?.lastPage ?? 0) >= pageIndex) {
            emit(_LoadedNotifications(data: currentState.data, hasMore: true));
            final result = await notificationsUsecase(pageIndex);
            result.fold((failure) => emit(_ErrorNotifications(failure.message)), (success) {
              _changeIndexPage();
              List<NotificationData>? currentNotifications = List.from(currentState.data.payload?.notifications ?? []);
              final newNotifications = success.data?.payload?.notifications ?? [];
              currentNotifications.addAll(newNotifications);
              final updatedPayload = currentState.data.payload!.copyWith(notifications: currentNotifications);
              final updatedData = currentState.data.copyWith(payload: updatedPayload);
              emit(_LoadedNotifications(data: updatedData));
            });
          }
        }
      }
    } catch (e) {
      emit(_ErrorNotifications('Server Error In Notification Section : $e'));
      log('Server Error In Notification Section : $e');
    }
  }

  void _changeIndexPage() {
    scrollController.addListener(() {
      if (scrollController.position.pixels == scrollController.position.maxScrollExtent) {
        state.whenOrNull(
          loadedNotifications: (data, _) {
            if (pageIndex <= (data.payload?.pagination?.lastPage ?? 1)) {
              pageIndex++;
              getAllNotification(loadMore: true);
            }
          },
        );
      }
    });
  }
}
