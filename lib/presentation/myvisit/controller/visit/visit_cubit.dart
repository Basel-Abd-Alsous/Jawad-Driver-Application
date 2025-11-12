import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/model/visit_model.dart';
import '../../domain/usecase/visit_usecase.dart';

part 'visit_state.dart';
part 'visit_cubit.freezed.dart';

class VisitCubit extends Cubit<VisitState> {
  final VisitUsecase visitUsecase;
  VisitCubit({required this.visitUsecase}) : super(VisitState.initial());

  int pageIndex = 1;
  int pageIndexCanceled = 1;
  ScrollController scrollController = ScrollController();
  ScrollController scrollControllerCanceled = ScrollController();

  // Function To Get All Completed Visit
  Future<void> getAllCompletedVisit({bool? loadMore}) async {
    try {
      if (loadMore != true) {
        emit(_LoadingPreviousVisit());
        final result = await visitUsecase.getAllPreviousVisit(pageIndex);
        result.fold((failure) => emit(_ErrorPreviousVisit(failure.message)), (success) {
          _changeIndexPage();
          emit(_LoadedPreviousVisit(data: success.data!));
        });
      } else {
        final currentState = state;

        if (currentState is _LoadedPreviousVisit) {
          if ((currentState.data.payload?.pagination?.lastPage ?? 0) >= pageIndex) {
            emit(_LoadedPreviousVisit(data: currentState.data, hasMore: true));
            final result = await visitUsecase.getAllPreviousVisit(pageIndex);
            result.fold((failure) => emit(_ErrorPreviousVisit(failure.message)), (success) {
              _changeIndexPage();
              List<Travel>? currentCompletedVisits = List.from(currentState.data.payload?.travels ?? []);
              final newCompletedVisits = success.data?.payload?.travels ?? [];
              currentCompletedVisits.addAll(newCompletedVisits);
              final updatedPayload = currentState.data.payload!.copyWith(travels: currentCompletedVisits);
              final updatedData = currentState.data.copyWith(payload: updatedPayload);
              emit(_LoadedPreviousVisit(data: updatedData));
            });
          }
        }
      }
    } catch (e) {
      emit(_ErrorPreviousVisit('Server Error In CompletedVisit Section : $e'));
      log('Server Error In CompletedVisit Section : $e');
    }
  }

  void _changeIndexPage() {
    scrollController.addListener(() {
      if (scrollController.position.pixels == scrollController.position.maxScrollExtent) {
        state.whenOrNull(
          loadedPreviousVisit: (data, _) {
            if (pageIndex <= (data.payload?.pagination?.lastPage ?? 1)) {
              pageIndex++;
              getAllCompletedVisit(loadMore: true);
            }
          },
        );
      }
    });
  }

  // Function To Get All Canceled Visit
  Future<void> getAllCanceledVisit({bool? loadMore}) async {
    try {
      if (loadMore != true) {
        emit(_LoadingCancelVisits());
        final result = await visitUsecase.getAllCancelVisit(pageIndex);
        result.fold((failure) => emit(_ErrorCancelVisits(failure.message)), (success) {
          _changeIndexPageCanceled();
          emit(_LoadedCancelVisits(data: success.data!));
        });
      } else {
        final currentState = state;

        if (currentState is _LoadedCancelVisits) {
          if ((currentState.data.payload?.pagination?.lastPage ?? 0) >= pageIndex) {
            emit(_LoadedCancelVisits(data: currentState.data, hasMore: true));
            final result = await visitUsecase.getAllCancelVisit(pageIndex);
            result.fold((failure) => emit(_ErrorCancelVisits(failure.message)), (success) {
              _changeIndexPageCanceled();
              List<Travel>? currentCanceledVisits = List.from(currentState.data.payload?.travels ?? []);
              final newCanceledVisits = success.data?.payload?.travels ?? [];
              currentCanceledVisits.addAll(newCanceledVisits);
              final updatedPayload = currentState.data.payload!.copyWith(travels: currentCanceledVisits);
              final updatedData = currentState.data.copyWith(payload: updatedPayload);
              emit(_LoadedCancelVisits(data: updatedData));
            });
          }
        }
      }
    } catch (e) {
      emit(_ErrorCancelVisits('Server Error In CanceledVisit Section : $e'));
      log('Server Error In CanceledVisit Section : $e');
    }
  }

  void _changeIndexPageCanceled() {
    scrollControllerCanceled.addListener(() {
      if (scrollControllerCanceled.position.pixels == scrollControllerCanceled.position.maxScrollExtent) {
        state.whenOrNull(
          loadedCancelVisits: (data, _) {
            if (pageIndex <= (data.payload?.pagination?.lastPage ?? 1)) {
              pageIndex++;
              getAllCanceledVisit(loadMore: true);
            }
          },
        );
      }
    });
  }
}
