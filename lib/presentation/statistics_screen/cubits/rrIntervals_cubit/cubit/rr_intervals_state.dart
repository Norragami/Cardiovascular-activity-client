part of 'rr_intervals_cubit.dart';

@freezed
class RrIntervalsState with _$RrIntervalsState {
  const factory RrIntervalsState.initial() = _Initial;
  const factory RrIntervalsState.loading() = _Loading;
  const factory RrIntervalsState.loaded(List<double> rrIntervals,List<double> rrIntervalsX) = _Loaded;
}
