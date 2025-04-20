part of 'ap_cubit.dart';

@freezed
class ApState with _$ApState {
  const factory ApState.initial() = _Initial;
  const factory ApState.loading() = _Loading;
  const factory ApState.loaded(List<double> outputAp, List<double> outputApX, List<double> outputApPeaksX, List<double> outputApPeaksY,
        List<double> outputApMinsX, List<double> outputApMinsY) = _Loaded;
}
