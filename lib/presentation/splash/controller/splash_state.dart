part of 'splash_bloc.dart';

@freezed
class SplashState with _$SplashState {
  const factory SplashState.initial() = _Initial;
  const factory SplashState.loading() = _Loading;
  const factory SplashState.player(VideoPlayerController controller) = _Player;
  const factory SplashState.finish(String route) = _Finish;
}
