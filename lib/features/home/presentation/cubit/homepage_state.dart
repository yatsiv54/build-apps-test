part of 'homepage_cubit.dart';

@freezed
abstract class HomePageState with _$HomePageState {
  const factory HomePageState.initial() = _Initial;
  const factory HomePageState.loading() = _Loading;
  const factory HomePageState.loaded({
    required List<PostModel> posts,
  }) = _Loaded;
  const factory HomePageState.error({
    required String error,
  }) = _Error;
}
