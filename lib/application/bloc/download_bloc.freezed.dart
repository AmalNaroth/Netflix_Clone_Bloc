// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'download_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DownloadEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getDownloadImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getDownloadImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getDownloadImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetDownloadImage value) getDownloadImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetDownloadImage value)? getDownloadImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetDownloadImage value)? getDownloadImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DownloadEventCopyWith<$Res> {
  factory $DownloadEventCopyWith(
          DownloadEvent value, $Res Function(DownloadEvent) then) =
      _$DownloadEventCopyWithImpl<$Res, DownloadEvent>;
}

/// @nodoc
class _$DownloadEventCopyWithImpl<$Res, $Val extends DownloadEvent>
    implements $DownloadEventCopyWith<$Res> {
  _$DownloadEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetDownloadImageImplCopyWith<$Res> {
  factory _$$GetDownloadImageImplCopyWith(_$GetDownloadImageImpl value,
          $Res Function(_$GetDownloadImageImpl) then) =
      __$$GetDownloadImageImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetDownloadImageImplCopyWithImpl<$Res>
    extends _$DownloadEventCopyWithImpl<$Res, _$GetDownloadImageImpl>
    implements _$$GetDownloadImageImplCopyWith<$Res> {
  __$$GetDownloadImageImplCopyWithImpl(_$GetDownloadImageImpl _value,
      $Res Function(_$GetDownloadImageImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetDownloadImageImpl implements _GetDownloadImage {
  const _$GetDownloadImageImpl();

  @override
  String toString() {
    return 'DownloadEvent.getDownloadImage()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetDownloadImageImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getDownloadImage,
  }) {
    return getDownloadImage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getDownloadImage,
  }) {
    return getDownloadImage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getDownloadImage,
    required TResult orElse(),
  }) {
    if (getDownloadImage != null) {
      return getDownloadImage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetDownloadImage value) getDownloadImage,
  }) {
    return getDownloadImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetDownloadImage value)? getDownloadImage,
  }) {
    return getDownloadImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetDownloadImage value)? getDownloadImage,
    required TResult orElse(),
  }) {
    if (getDownloadImage != null) {
      return getDownloadImage(this);
    }
    return orElse();
  }
}

abstract class _GetDownloadImage implements DownloadEvent {
  const factory _GetDownloadImage() = _$GetDownloadImageImpl;
}

/// @nodoc
mixin _$DownloadState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<Downloads> get downloads => throw _privateConstructorUsedError;
  Option<Either<MainFailure, List<Downloads>>>
      get downloadsFailureOrSuccessOption => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DownloadStateCopyWith<DownloadState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DownloadStateCopyWith<$Res> {
  factory $DownloadStateCopyWith(
          DownloadState value, $Res Function(DownloadState) then) =
      _$DownloadStateCopyWithImpl<$Res, DownloadState>;
  @useResult
  $Res call(
      {bool isLoading,
      List<Downloads> downloads,
      Option<Either<MainFailure, List<Downloads>>>
          downloadsFailureOrSuccessOption});
}

/// @nodoc
class _$DownloadStateCopyWithImpl<$Res, $Val extends DownloadState>
    implements $DownloadStateCopyWith<$Res> {
  _$DownloadStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? downloads = null,
    Object? downloadsFailureOrSuccessOption = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      downloads: null == downloads
          ? _value.downloads
          : downloads // ignore: cast_nullable_to_non_nullable
              as List<Downloads>,
      downloadsFailureOrSuccessOption: null == downloadsFailureOrSuccessOption
          ? _value.downloadsFailureOrSuccessOption
          : downloadsFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, List<Downloads>>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DownloadStateImplCopyWith<$Res>
    implements $DownloadStateCopyWith<$Res> {
  factory _$$DownloadStateImplCopyWith(
          _$DownloadStateImpl value, $Res Function(_$DownloadStateImpl) then) =
      __$$DownloadStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      List<Downloads> downloads,
      Option<Either<MainFailure, List<Downloads>>>
          downloadsFailureOrSuccessOption});
}

/// @nodoc
class __$$DownloadStateImplCopyWithImpl<$Res>
    extends _$DownloadStateCopyWithImpl<$Res, _$DownloadStateImpl>
    implements _$$DownloadStateImplCopyWith<$Res> {
  __$$DownloadStateImplCopyWithImpl(
      _$DownloadStateImpl _value, $Res Function(_$DownloadStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? downloads = null,
    Object? downloadsFailureOrSuccessOption = null,
  }) {
    return _then(_$DownloadStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      downloads: null == downloads
          ? _value._downloads
          : downloads // ignore: cast_nullable_to_non_nullable
              as List<Downloads>,
      downloadsFailureOrSuccessOption: null == downloadsFailureOrSuccessOption
          ? _value.downloadsFailureOrSuccessOption
          : downloadsFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, List<Downloads>>>,
    ));
  }
}

/// @nodoc

class _$DownloadStateImpl implements _DownloadState {
  const _$DownloadStateImpl(
      {required this.isLoading,
      required final List<Downloads> downloads,
      required this.downloadsFailureOrSuccessOption})
      : _downloads = downloads;

  @override
  final bool isLoading;
  final List<Downloads> _downloads;
  @override
  List<Downloads> get downloads {
    if (_downloads is EqualUnmodifiableListView) return _downloads;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_downloads);
  }

  @override
  final Option<Either<MainFailure, List<Downloads>>>
      downloadsFailureOrSuccessOption;

  @override
  String toString() {
    return 'DownloadState(isLoading: $isLoading, downloads: $downloads, downloadsFailureOrSuccessOption: $downloadsFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DownloadStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality()
                .equals(other._downloads, _downloads) &&
            (identical(other.downloadsFailureOrSuccessOption,
                    downloadsFailureOrSuccessOption) ||
                other.downloadsFailureOrSuccessOption ==
                    downloadsFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      const DeepCollectionEquality().hash(_downloads),
      downloadsFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DownloadStateImplCopyWith<_$DownloadStateImpl> get copyWith =>
      __$$DownloadStateImplCopyWithImpl<_$DownloadStateImpl>(this, _$identity);
}

abstract class _DownloadState implements DownloadState {
  const factory _DownloadState(
      {required final bool isLoading,
      required final List<Downloads> downloads,
      required final Option<Either<MainFailure, List<Downloads>>>
          downloadsFailureOrSuccessOption}) = _$DownloadStateImpl;

  @override
  bool get isLoading;
  @override
  List<Downloads> get downloads;
  @override
  Option<Either<MainFailure, List<Downloads>>>
      get downloadsFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$DownloadStateImplCopyWith<_$DownloadStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
