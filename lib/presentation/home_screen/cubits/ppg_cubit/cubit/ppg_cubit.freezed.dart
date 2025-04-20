// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ppg_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PpgState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<double> outputPpg,
            List<double> outputPpgX,
            List<double> outputPpgPeaksX,
            List<double> outputPpgPeaksY,
            List<double> outputPpgMinsX,
            List<double> outputPpgMinsY)
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<double> outputPpg,
            List<double> outputPpgX,
            List<double> outputPpgPeaksX,
            List<double> outputPpgPeaksY,
            List<double> outputPpgMinsX,
            List<double> outputPpgMinsY)?
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<double> outputPpg,
            List<double> outputPpgX,
            List<double> outputPpgPeaksX,
            List<double> outputPpgPeaksY,
            List<double> outputPpgMinsX,
            List<double> outputPpgMinsY)?
        loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PpgStateCopyWith<$Res> {
  factory $PpgStateCopyWith(PpgState value, $Res Function(PpgState) then) =
      _$PpgStateCopyWithImpl<$Res, PpgState>;
}

/// @nodoc
class _$PpgStateCopyWithImpl<$Res, $Val extends PpgState>
    implements $PpgStateCopyWith<$Res> {
  _$PpgStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PpgState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$PpgStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of PpgState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'PpgState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<double> outputPpg,
            List<double> outputPpgX,
            List<double> outputPpgPeaksX,
            List<double> outputPpgPeaksY,
            List<double> outputPpgMinsX,
            List<double> outputPpgMinsY)
        loaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<double> outputPpg,
            List<double> outputPpgX,
            List<double> outputPpgPeaksX,
            List<double> outputPpgPeaksY,
            List<double> outputPpgMinsX,
            List<double> outputPpgMinsY)?
        loaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<double> outputPpg,
            List<double> outputPpgX,
            List<double> outputPpgPeaksX,
            List<double> outputPpgPeaksY,
            List<double> outputPpgMinsX,
            List<double> outputPpgMinsY)?
        loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements PpgState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$PpgStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of PpgState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'PpgState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<double> outputPpg,
            List<double> outputPpgX,
            List<double> outputPpgPeaksX,
            List<double> outputPpgPeaksY,
            List<double> outputPpgMinsX,
            List<double> outputPpgMinsY)
        loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<double> outputPpg,
            List<double> outputPpgX,
            List<double> outputPpgPeaksX,
            List<double> outputPpgPeaksY,
            List<double> outputPpgMinsX,
            List<double> outputPpgMinsY)?
        loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<double> outputPpg,
            List<double> outputPpgX,
            List<double> outputPpgPeaksX,
            List<double> outputPpgPeaksY,
            List<double> outputPpgMinsX,
            List<double> outputPpgMinsY)?
        loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements PpgState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<double> outputPpg,
      List<double> outputPpgX,
      List<double> outputPpgPeaksX,
      List<double> outputPpgPeaksY,
      List<double> outputPpgMinsX,
      List<double> outputPpgMinsY});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$PpgStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of PpgState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? outputPpg = null,
    Object? outputPpgX = null,
    Object? outputPpgPeaksX = null,
    Object? outputPpgPeaksY = null,
    Object? outputPpgMinsX = null,
    Object? outputPpgMinsY = null,
  }) {
    return _then(_$LoadedImpl(
      null == outputPpg
          ? _value._outputPpg
          : outputPpg // ignore: cast_nullable_to_non_nullable
              as List<double>,
      null == outputPpgX
          ? _value._outputPpgX
          : outputPpgX // ignore: cast_nullable_to_non_nullable
              as List<double>,
      null == outputPpgPeaksX
          ? _value._outputPpgPeaksX
          : outputPpgPeaksX // ignore: cast_nullable_to_non_nullable
              as List<double>,
      null == outputPpgPeaksY
          ? _value._outputPpgPeaksY
          : outputPpgPeaksY // ignore: cast_nullable_to_non_nullable
              as List<double>,
      null == outputPpgMinsX
          ? _value._outputPpgMinsX
          : outputPpgMinsX // ignore: cast_nullable_to_non_nullable
              as List<double>,
      null == outputPpgMinsY
          ? _value._outputPpgMinsY
          : outputPpgMinsY // ignore: cast_nullable_to_non_nullable
              as List<double>,
    ));
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl(
      final List<double> outputPpg,
      final List<double> outputPpgX,
      final List<double> outputPpgPeaksX,
      final List<double> outputPpgPeaksY,
      final List<double> outputPpgMinsX,
      final List<double> outputPpgMinsY)
      : _outputPpg = outputPpg,
        _outputPpgX = outputPpgX,
        _outputPpgPeaksX = outputPpgPeaksX,
        _outputPpgPeaksY = outputPpgPeaksY,
        _outputPpgMinsX = outputPpgMinsX,
        _outputPpgMinsY = outputPpgMinsY;

  final List<double> _outputPpg;
  @override
  List<double> get outputPpg {
    if (_outputPpg is EqualUnmodifiableListView) return _outputPpg;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_outputPpg);
  }

  final List<double> _outputPpgX;
  @override
  List<double> get outputPpgX {
    if (_outputPpgX is EqualUnmodifiableListView) return _outputPpgX;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_outputPpgX);
  }

  final List<double> _outputPpgPeaksX;
  @override
  List<double> get outputPpgPeaksX {
    if (_outputPpgPeaksX is EqualUnmodifiableListView) return _outputPpgPeaksX;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_outputPpgPeaksX);
  }

  final List<double> _outputPpgPeaksY;
  @override
  List<double> get outputPpgPeaksY {
    if (_outputPpgPeaksY is EqualUnmodifiableListView) return _outputPpgPeaksY;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_outputPpgPeaksY);
  }

  final List<double> _outputPpgMinsX;
  @override
  List<double> get outputPpgMinsX {
    if (_outputPpgMinsX is EqualUnmodifiableListView) return _outputPpgMinsX;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_outputPpgMinsX);
  }

  final List<double> _outputPpgMinsY;
  @override
  List<double> get outputPpgMinsY {
    if (_outputPpgMinsY is EqualUnmodifiableListView) return _outputPpgMinsY;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_outputPpgMinsY);
  }

  @override
  String toString() {
    return 'PpgState.loaded(outputPpg: $outputPpg, outputPpgX: $outputPpgX, outputPpgPeaksX: $outputPpgPeaksX, outputPpgPeaksY: $outputPpgPeaksY, outputPpgMinsX: $outputPpgMinsX, outputPpgMinsY: $outputPpgMinsY)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            const DeepCollectionEquality()
                .equals(other._outputPpg, _outputPpg) &&
            const DeepCollectionEquality()
                .equals(other._outputPpgX, _outputPpgX) &&
            const DeepCollectionEquality()
                .equals(other._outputPpgPeaksX, _outputPpgPeaksX) &&
            const DeepCollectionEquality()
                .equals(other._outputPpgPeaksY, _outputPpgPeaksY) &&
            const DeepCollectionEquality()
                .equals(other._outputPpgMinsX, _outputPpgMinsX) &&
            const DeepCollectionEquality()
                .equals(other._outputPpgMinsY, _outputPpgMinsY));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_outputPpg),
      const DeepCollectionEquality().hash(_outputPpgX),
      const DeepCollectionEquality().hash(_outputPpgPeaksX),
      const DeepCollectionEquality().hash(_outputPpgPeaksY),
      const DeepCollectionEquality().hash(_outputPpgMinsX),
      const DeepCollectionEquality().hash(_outputPpgMinsY));

  /// Create a copy of PpgState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<double> outputPpg,
            List<double> outputPpgX,
            List<double> outputPpgPeaksX,
            List<double> outputPpgPeaksY,
            List<double> outputPpgMinsX,
            List<double> outputPpgMinsY)
        loaded,
  }) {
    return loaded(outputPpg, outputPpgX, outputPpgPeaksX, outputPpgPeaksY,
        outputPpgMinsX, outputPpgMinsY);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<double> outputPpg,
            List<double> outputPpgX,
            List<double> outputPpgPeaksX,
            List<double> outputPpgPeaksY,
            List<double> outputPpgMinsX,
            List<double> outputPpgMinsY)?
        loaded,
  }) {
    return loaded?.call(outputPpg, outputPpgX, outputPpgPeaksX, outputPpgPeaksY,
        outputPpgMinsX, outputPpgMinsY);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<double> outputPpg,
            List<double> outputPpgX,
            List<double> outputPpgPeaksX,
            List<double> outputPpgPeaksY,
            List<double> outputPpgMinsX,
            List<double> outputPpgMinsY)?
        loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(outputPpg, outputPpgX, outputPpgPeaksX, outputPpgPeaksY,
          outputPpgMinsX, outputPpgMinsY);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements PpgState {
  const factory _Loaded(
      final List<double> outputPpg,
      final List<double> outputPpgX,
      final List<double> outputPpgPeaksX,
      final List<double> outputPpgPeaksY,
      final List<double> outputPpgMinsX,
      final List<double> outputPpgMinsY) = _$LoadedImpl;

  List<double> get outputPpg;
  List<double> get outputPpgX;
  List<double> get outputPpgPeaksX;
  List<double> get outputPpgPeaksY;
  List<double> get outputPpgMinsX;
  List<double> get outputPpgMinsY;

  /// Create a copy of PpgState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
