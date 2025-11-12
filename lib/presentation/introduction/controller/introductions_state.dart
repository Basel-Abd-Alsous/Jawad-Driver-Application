part of 'introductions_bloc.dart';

@freezed
class IntroductionsState with _$IntroductionsState {
  const factory IntroductionsState.initial({@Default(0) int index}) = _Initial;
  const factory IntroductionsState.complete() = _Complete;
}
