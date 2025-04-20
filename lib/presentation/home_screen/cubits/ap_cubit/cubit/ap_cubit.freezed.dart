// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ap_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ApState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<double> outputAp,
            List<double> outputApX,
            List<double> outputApPeaksX,
            List<double> outputApPeaksY,
            List<double> outputApMinsX,
            List<double> outputApMinsY)
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<double> outputAp,
            List<double> outputApX,
            List<double> outputApPeaksX,
            List<double> outputApPeaksY,
            List<double> outputApMinsX,
            List<double> outputApMinsY)?
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<double> outputAp,
            List<double> outputApX,
            List<double> outputApPeaksX,
            List<double> outputApPeaksY,
            List<double> outputApMinsX,
            List<double> outputApMinsY)?
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
abstract class $ApStateCopyWith<$Res> {
  factory $ApStateCopyWith(ApState value, $Res Function(ApState) then) =
      _$ApStateCopyWithImpl<$Res, ApState>;
}

/// @nodoc
class _$ApStateCopyWithImpl<$Res, $Val extends ApState>
    implements $ApStateCopyWith<$Res> {
  _$ApStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ApState
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
    extends _$ApStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of ApState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'ApState.initial()';
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
            List<double> outputAp,
            List<double> outputApX,
            List<double> outputApPeaksX,
            List<double> outputApPeaksY,
            List<double> outputApMinsX,
            List<double> outputApMinsY)
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
            List<double> outputAp,
            List<double> outputApX,
            List<double> outputApPeaksX,
            List<double> outputApPeaksY,
            List<double> outputApMinsX,
            List<double> outputApMinsY)?
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
            List<double> outputAp,
            List<double> outputApX,
            List<double> outputApPeaksX,
            List<double> outputApPeaksY,
            List<double> outputApMinsX,
            List<double> outputApMinsY)?
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

abstract class _Initial implements ApState {
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
    extends _$ApStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of ApState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'ApState.loading()';
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
            List<double> outputAp,
            List<double> outputApX,
            List<double> outputApPeaksX,
            List<double> outputApPeaksY,
            List<double> outputApMinsX,
            List<double> outputApMinsY)
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
            List<double> outputAp,
            List<double> outputApX,
            List<double> outputApPeaksX,
            List<double> outputApPeaksY,
            List<double> outputApMinsX,
            List<double> outputApMinsY)?
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
            List<double> outputAp,
            List<double> outputApX,
            List<double> outputApPeaksX,
            List<double> outputApPeaksY,
            List<double> outputApMinsX,
            List<double> outputApMinsY)?
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

abstract class _Loading implements ApState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<double> outputAp,
      List<double> outputApX,
      List<double> outputApPeaksX,
      List<double> outputApPeaksY,
      List<double> outputApMinsX,
      List<double> outputApMinsY});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$ApStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ApState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? outputAp = null,
    Object? outputApX = null,
    Object? outputApPeaksX = null,
    Object? outputApPeaksY = null,
    Object? outputApMinsX = null,
    Object? outputApMinsY = null,
  }) {
    return _then(_$LoadedImpl(
      null == outputAp
          ? _value._outputAp
          : outputAp // ignore: cast_nullable_to_non_nullable
              as List<double>,
      null == outputApX
          ? _value._outputApX
          : outputApX // ignore: cast_nullable_to_non_nullable
              as List<double>,
      null == outputApPeaksX
          ? _value._outputApPeaksX
          : outputApPeaksX // ignore: cast_nullable_to_non_nullable
              as List<double>,
      null == outputApPeaksY
          ? _value._outputApPeaksY
          : outputApPeaksY // ignore: cast_nullable_to_non_nullable
              as List<double>,
      null == outputApMinsX
          ? _value._outputApMinsX
          : outputApMinsX // ignore: cast_nullable_to_non_nullable
              as List<double>,
      null == outputApMinsY
          ? _value._outputApMinsY
          : outputApMinsY // ignore: cast_nullable_to_non_nullable
              as List<double>,
    ));
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl(
      final List<double> outputAp,
      final List<double> outputApX,
      final List<double> outputApPeaksX,
      final List<double> outputApPeaksY,
      final List<double> outputApMinsX,
      final List<double> outputApMinsY)
      : _outputAp = outputAp,
        _outputApX = outputApX,
        _outputApPeaksX = outputApPeaksX,
        _outputApPeaksY = outputApPeaksY,
        _outputApMinsX = outputApMinsX,
        _outputApMinsY = outputApMinsY;

  final List<double> _outputAp;
  @override
  List<double> get outputAp {
    if (_outputAp is EqualUnmodifiableListView) return _outputAp;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_outputAp);
  }

  final List<double> _outputApX;
  @override
  List<double> get outputApX {
    if (_outputApX is EqualUnmodifiableListView) return _outputApX;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_outputApX);
  }

  final List<double> _outputApPeaksX;
  @override
  List<double> get outputApPeaksX {
    if (_outputApPeaksX is EqualUnmodifiableListView) return _outputApPeaksX;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_outputApPeaksX);
  }

  final List<double> _outputApPeaksY;
  @override
  List<double> get outputApPeaksY {
    if (_outputApPeaksY is EqualUnmodifiableListView) return _outputApPeaksY;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_outputApPeaksY);
  }

  final List<double> _outputApMinsX;
  @override
  List<double> get outputApMinsX {
    if (_outputApMinsX is EqualUnmodifiableListView) return _outputApMinsX;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_outputApMinsX);
  }

  final List<double> _outputApMinsY;
  @override
  List<double> get outputApMinsY {
    if (_outputApMinsY is EqualUnmodifiableListView) return _outputApMinsY;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_outputApMinsY);
  }

  @override
  String toString() {
    return 'ApState.loaded(outputAp: $outputAp, outputApX: $outputApX, outputApPeaksX: $outputApPeaksX, outputApPeaksY: $outputApPeaksY, outputApMinsX: $outputApMinsX, outputApMinsY: $outputApMinsY)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            const DeepCollectionEquality().equals(other._outputAp, _outputAp) &&
            const DeepCollectionEquality()
                .equals(other._outputApX, _outputApX) &&
            const DeepCollectionEquality()
                .equals(other._outputApPeaksX, _outputApPeaksX) &&
            const DeepCollectionEquality()
                .equals(other._outputApPeaksY, _outputApPeaksY) &&
            const DeepCollectionEquality()
                .equals(other._outputApMinsX, _outputApMinsX) &&
            const DeepCollectionEquality()
                .equals(other._outputApMinsY, _outputApMinsY));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_outputAp),
      const DeepCollectionEquality().hash(_outputApX),
      const DeepCollectionEquality().hash(_outputApPeaksX),
      const DeepCollectionEquality().hash(_outputApPeaksY),
      const DeepCollectionEquality().hash(_outputApMinsX),
      const DeepCollectionEquality().hash(_outputApMinsY));

  /// Create a copy of ApState
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
            List<double> outputAp,
            List<double> outputApX,
            List<double> outputApPeaksX,
            List<double> outputApPeaksY,
            List<double> outputApMinsX,
            List<double> outputApMinsY)
        loaded,
  }) {
    return loaded(outputAp, outputApX, outputApPeaksX, outputApPeaksY,
        outputApMinsX, outputApMinsY);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<double> outputAp,
            List<double> outputApX,
            List<double> outputApPeaksX,
            List<double> outputApPeaksY,
            List<double> outputApMinsX,
            List<double> outputApMinsY)?
        loaded,
  }) {
    return loaded?.call(outputAp, outputApX, outputApPeaksX, outputApPeaksY,
        outputApMinsX, outputApMinsY);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<double> outputAp,
            List<double> outputApX,
            List<double> outputApPeaksX,
            List<double> outputApPeaksY,
            List<double> outputApMinsX,
            List<double> outputApMinsY)?
        loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(outputAp, outputApX, outputApPeaksX, outputApPeaksY,
          outputApMinsX, outputApMinsY);
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

abstract class _Loaded implements ApState {
  const factory _Loaded(
      final List<double> outputAp,
      final List<double> outputApX,
      final List<double> outputApPeaksX,
      final List<double> outputApPeaksY,
      final List<double> outputApMinsX,
      final List<double> outputApMinsY) = _$LoadedImpl;

  List<double> get outputAp;
  List<double> get outputApX;
  List<double> get outputApPeaksX;
  List<double> get outputApPeaksY;
  List<double> get outputApMinsX;
  List<double> get outputApMinsY;

  /// Create a copy of ApState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
