part of 'introductions_bloc.dart';

@freezed
class IntroductionsEvent with _$IntroductionsEvent {
  const factory IntroductionsEvent.initialEvent() = _InitialEvent;
  const factory IntroductionsEvent.nextPageEvent() = _NextPageEvent;
  const factory IntroductionsEvent.skipEvent() = _SkipEvent;
}
