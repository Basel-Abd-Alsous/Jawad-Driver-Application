part of 'home_cubit.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;

  // Profile State
  const factory HomeState.errorProfile(String message) = _ErrorProfile;

  // Map State
  const factory HomeState.loadingMap() = _LoadingMap;
  const factory HomeState.loadedMap() = _LoadedMap;


  // TravelRequest State
  const factory HomeState.loadingTravelRequest() = _LoadingTravelRequest;
  const factory HomeState.loadedTravelRequest(List<TravelRequest> userModel) = _LoadedTravelRequest;
  const factory HomeState.errorTravelRequest(String message) = _ErrorTravelRequest;

  // Work Status State
  const factory HomeState.loadingWorkStatus() = _LoadingWorkStatus;
  const factory HomeState.loadedWorkStatus(UserModel userModel) = _LoadedWorkStatus;
  const factory HomeState.errorWorkStatus(String message) = _ErrorWorkStatus;

  // ✅ New: Location Update State
  const factory HomeState.locationUpdated({required double latitude, required double longitude, double? accuracy, double? speed}) = _LocationUpdated;
}
