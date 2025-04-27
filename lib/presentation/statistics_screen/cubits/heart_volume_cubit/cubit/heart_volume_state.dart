part of 'heart_volume_cubit.dart';

@freezed
class HeartVolumeState with _$HeartVolumeState {
  const factory HeartVolumeState.initial() = _Initial;
  const factory HeartVolumeState.loading() = _Loading;
  const factory HeartVolumeState.loaded(List<double> heartVolume,List<double> heartVolumePeaksCoordinates) = _Loaded;
}
