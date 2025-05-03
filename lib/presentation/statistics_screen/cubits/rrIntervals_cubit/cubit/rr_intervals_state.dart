part of 'rr_intervals_cubit.dart';

@freezed
class RrIntervalsState with _$RrIntervalsState {
  const factory RrIntervalsState.initial() = _Initial;
  const factory RrIntervalsState.loading() = _Loading;
  const factory RrIntervalsState.loaded(List<double> rrIntervals, double mRR, double sdrr, double msd, double rmsd, double pnn50) = _Loaded;
}
