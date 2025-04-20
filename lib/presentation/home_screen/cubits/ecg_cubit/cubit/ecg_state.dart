part of 'ecg_cubit.dart';

@freezed
class EcgState with _$EcgState {
  const factory EcgState.initial() = _Initial;
  const factory EcgState.loading() = _Loading;
  const factory EcgState.loaded(List<double> outputEcg, List<double> outputEcgX, List<double> outputRx, List<double> outputRy, List<double> outputQx, List<double> outputQy, List<double> outputSx, List<double> outputSy) = _Loaded;
}
