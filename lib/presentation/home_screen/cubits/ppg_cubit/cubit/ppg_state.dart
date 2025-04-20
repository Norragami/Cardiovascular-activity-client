part of 'ppg_cubit.dart';

@freezed
class PpgState with _$PpgState {
  const factory PpgState.initial() = _Initial;
  const factory PpgState.loading() = _Loading;
  const factory PpgState.loaded(List<double> outputPpg, List<double> outputPpgX, List<double> outputPpgPeaksX,
   List<double> outputPpgPeaksY, List<double> outputPpgMinsX, List<double> outputPpgMinsY ) = _Loaded;
}
