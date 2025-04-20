// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ecg_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EcgState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<double> outputEcg,
            List<double> outputEcgX,
            List<double> outputRx,
            List<double> outputRy,
            List<double> outputQx,
            List<double> outputQy,
            List<double> outputSx,
            List<double> outputSy)
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<double> outputEcg,
            List<double> outputEcgX,
            List<double> outputRx,
            List<double> outputRy,
            List<double> outputQx,
            List<double> outputQy,
            List<double> outputSx,
            List<double> outputSy)?
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<double> outputEcg,
            List<double> outputEcgX,
            List<double> outputRx,
            List<double> outputRy,
            List<double> outputQx,
            List<double> outputQy,
            List<double> outputSx,
            List<double> outputSy)?
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
abstract class $EcgStateCopyWith<$Res> {
  factory $EcgStateCopyWith(EcgState value, $Res Function(EcgState) then) =
      _$EcgStateCopyWithImpl<$Res, EcgState>;
}

/// @nodoc
class _$EcgStateCopyWithImpl<$Res, $Val extends EcgState>
    implements $EcgStateCopyWith<$Res> {
  _$EcgStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EcgState
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
    extends _$EcgStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of EcgState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'EcgState.initial()';
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
            List<double> outputEcg,
            List<double> outputEcgX,
            List<double> outputRx,
            List<double> outputRy,
            List<double> outputQx,
            List<double> outputQy,
            List<double> outputSx,
            List<double> outputSy)
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
            List<double> outputEcg,
            List<double> outputEcgX,
            List<double> outputRx,
            List<double> outputRy,
            List<double> outputQx,
            List<double> outputQy,
            List<double> outputSx,
            List<double> outputSy)?
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
            List<double> outputEcg,
            List<double> outputEcgX,
            List<double> outputRx,
            List<double> outputRy,
            List<double> outputQx,
            List<double> outputQy,
            List<double> outputSx,
            List<double> outputSy)?
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

abstract class _Initial implements EcgState {
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
    extends _$EcgStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of EcgState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'EcgState.loading()';
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
            List<double> outputEcg,
            List<double> outputEcgX,
            List<double> outputRx,
            List<double> outputRy,
            List<double> outputQx,
            List<double> outputQy,
            List<double> outputSx,
            List<double> outputSy)
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
            List<double> outputEcg,
            List<double> outputEcgX,
            List<double> outputRx,
            List<double> outputRy,
            List<double> outputQx,
            List<double> outputQy,
            List<double> outputSx,
            List<double> outputSy)?
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
            List<double> outputEcg,
            List<double> outputEcgX,
            List<double> outputRx,
            List<double> outputRy,
            List<double> outputQx,
            List<double> outputQy,
            List<double> outputSx,
            List<double> outputSy)?
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

abstract class _Loading implements EcgState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<double> outputEcg,
      List<double> outputEcgX,
      List<double> outputRx,
      List<double> outputRy,
      List<double> outputQx,
      List<double> outputQy,
      List<double> outputSx,
      List<double> outputSy});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$EcgStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of EcgState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? outputEcg = null,
    Object? outputEcgX = null,
    Object? outputRx = null,
    Object? outputRy = null,
    Object? outputQx = null,
    Object? outputQy = null,
    Object? outputSx = null,
    Object? outputSy = null,
  }) {
    return _then(_$LoadedImpl(
      null == outputEcg
          ? _value._outputEcg
          : outputEcg // ignore: cast_nullable_to_non_nullable
              as List<double>,
      null == outputEcgX
          ? _value._outputEcgX
          : outputEcgX // ignore: cast_nullable_to_non_nullable
              as List<double>,
      null == outputRx
          ? _value._outputRx
          : outputRx // ignore: cast_nullable_to_non_nullable
              as List<double>,
      null == outputRy
          ? _value._outputRy
          : outputRy // ignore: cast_nullable_to_non_nullable
              as List<double>,
      null == outputQx
          ? _value._outputQx
          : outputQx // ignore: cast_nullable_to_non_nullable
              as List<double>,
      null == outputQy
          ? _value._outputQy
          : outputQy // ignore: cast_nullable_to_non_nullable
              as List<double>,
      null == outputSx
          ? _value._outputSx
          : outputSx // ignore: cast_nullable_to_non_nullable
              as List<double>,
      null == outputSy
          ? _value._outputSy
          : outputSy // ignore: cast_nullable_to_non_nullable
              as List<double>,
    ));
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl(
      final List<double> outputEcg,
      final List<double> outputEcgX,
      final List<double> outputRx,
      final List<double> outputRy,
      final List<double> outputQx,
      final List<double> outputQy,
      final List<double> outputSx,
      final List<double> outputSy)
      : _outputEcg = outputEcg,
        _outputEcgX = outputEcgX,
        _outputRx = outputRx,
        _outputRy = outputRy,
        _outputQx = outputQx,
        _outputQy = outputQy,
        _outputSx = outputSx,
        _outputSy = outputSy;

  final List<double> _outputEcg;
  @override
  List<double> get outputEcg {
    if (_outputEcg is EqualUnmodifiableListView) return _outputEcg;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_outputEcg);
  }

  final List<double> _outputEcgX;
  @override
  List<double> get outputEcgX {
    if (_outputEcgX is EqualUnmodifiableListView) return _outputEcgX;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_outputEcgX);
  }

  final List<double> _outputRx;
  @override
  List<double> get outputRx {
    if (_outputRx is EqualUnmodifiableListView) return _outputRx;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_outputRx);
  }

  final List<double> _outputRy;
  @override
  List<double> get outputRy {
    if (_outputRy is EqualUnmodifiableListView) return _outputRy;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_outputRy);
  }

  final List<double> _outputQx;
  @override
  List<double> get outputQx {
    if (_outputQx is EqualUnmodifiableListView) return _outputQx;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_outputQx);
  }

  final List<double> _outputQy;
  @override
  List<double> get outputQy {
    if (_outputQy is EqualUnmodifiableListView) return _outputQy;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_outputQy);
  }

  final List<double> _outputSx;
  @override
  List<double> get outputSx {
    if (_outputSx is EqualUnmodifiableListView) return _outputSx;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_outputSx);
  }

  final List<double> _outputSy;
  @override
  List<double> get outputSy {
    if (_outputSy is EqualUnmodifiableListView) return _outputSy;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_outputSy);
  }

  @override
  String toString() {
    return 'EcgState.loaded(outputEcg: $outputEcg, outputEcgX: $outputEcgX, outputRx: $outputRx, outputRy: $outputRy, outputQx: $outputQx, outputQy: $outputQy, outputSx: $outputSx, outputSy: $outputSy)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            const DeepCollectionEquality()
                .equals(other._outputEcg, _outputEcg) &&
            const DeepCollectionEquality()
                .equals(other._outputEcgX, _outputEcgX) &&
            const DeepCollectionEquality().equals(other._outputRx, _outputRx) &&
            const DeepCollectionEquality().equals(other._outputRy, _outputRy) &&
            const DeepCollectionEquality().equals(other._outputQx, _outputQx) &&
            const DeepCollectionEquality().equals(other._outputQy, _outputQy) &&
            const DeepCollectionEquality().equals(other._outputSx, _outputSx) &&
            const DeepCollectionEquality().equals(other._outputSy, _outputSy));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_outputEcg),
      const DeepCollectionEquality().hash(_outputEcgX),
      const DeepCollectionEquality().hash(_outputRx),
      const DeepCollectionEquality().hash(_outputRy),
      const DeepCollectionEquality().hash(_outputQx),
      const DeepCollectionEquality().hash(_outputQy),
      const DeepCollectionEquality().hash(_outputSx),
      const DeepCollectionEquality().hash(_outputSy));

  /// Create a copy of EcgState
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
            List<double> outputEcg,
            List<double> outputEcgX,
            List<double> outputRx,
            List<double> outputRy,
            List<double> outputQx,
            List<double> outputQy,
            List<double> outputSx,
            List<double> outputSy)
        loaded,
  }) {
    return loaded(outputEcg, outputEcgX, outputRx, outputRy, outputQx, outputQy,
        outputSx, outputSy);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<double> outputEcg,
            List<double> outputEcgX,
            List<double> outputRx,
            List<double> outputRy,
            List<double> outputQx,
            List<double> outputQy,
            List<double> outputSx,
            List<double> outputSy)?
        loaded,
  }) {
    return loaded?.call(outputEcg, outputEcgX, outputRx, outputRy, outputQx,
        outputQy, outputSx, outputSy);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<double> outputEcg,
            List<double> outputEcgX,
            List<double> outputRx,
            List<double> outputRy,
            List<double> outputQx,
            List<double> outputQy,
            List<double> outputSx,
            List<double> outputSy)?
        loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(outputEcg, outputEcgX, outputRx, outputRy, outputQx,
          outputQy, outputSx, outputSy);
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

abstract class _Loaded implements EcgState {
  const factory _Loaded(
      final List<double> outputEcg,
      final List<double> outputEcgX,
      final List<double> outputRx,
      final List<double> outputRy,
      final List<double> outputQx,
      final List<double> outputQy,
      final List<double> outputSx,
      final List<double> outputSy) = _$LoadedImpl;

  List<double> get outputEcg;
  List<double> get outputEcgX;
  List<double> get outputRx;
  List<double> get outputRy;
  List<double> get outputQx;
  List<double> get outputQy;
  List<double> get outputSx;
  List<double> get outputSy;

  /// Create a copy of EcgState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
