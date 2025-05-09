part of 'decimated_ecg_cubit.dart';

@freezed
class DecimatedEcgState with _$DecimatedEcgState {
  const factory DecimatedEcgState.initial() = _Initial;
  const factory DecimatedEcgState.loading() = _Loading;
  const factory DecimatedEcgState.loaded(List<double> outputDecimatedEcg, List<double> outputDecimatedEcgX, double rectWidth) = _Loaded;
}
