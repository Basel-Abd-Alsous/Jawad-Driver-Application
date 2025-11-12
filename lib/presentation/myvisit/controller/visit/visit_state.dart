part of 'visit_cubit.dart';

@freezed
class VisitState with _$VisitState {
  const factory VisitState.initial() = _Initial;

  // Previous Visit State
  const factory VisitState.loadingPreviousVisit() = _LoadingPreviousVisit;
  const factory VisitState.loadedPreviousVisit({required VisitModel data, @Default(false) bool? hasMore}) = _LoadedPreviousVisit;
  const factory VisitState.errorPreviousVisit(String message) = _ErrorPreviousVisit;

  // Cancel Visits State
  const factory VisitState.loadingCancelVisits() = _LoadingCancelVisits;
  const factory VisitState.loadedCancelVisits({required VisitModel data, @Default(false) bool? hasMore}) = _LoadedCancelVisits;
  const factory VisitState.errorCancelVisits(String message) = _ErrorCancelVisits;


}
