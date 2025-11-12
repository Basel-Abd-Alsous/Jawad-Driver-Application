part of 'visit_details_cubit.dart';

@freezed
class VisitDetailsState with _$VisitDetailsState {
  const factory VisitDetailsState.initial() = _Initial;

  // Visit Details State
  const factory VisitDetailsState.loadingVisitDetails() = _LoadingVisitDetails;
  const factory VisitDetailsState.loadedVisitDetails(VisitDetailsModel data) = _LoadedVisitDetails;
  const factory VisitDetailsState.errorVisitDetails(String message) = _ErrorVisitDetails;

}
