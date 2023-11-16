// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_screen_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeScreenEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeScreenEventCopyWith<$Res> {
  factory $HomeScreenEventCopyWith(
          HomeScreenEvent value, $Res Function(HomeScreenEvent) then) =
      _$HomeScreenEventCopyWithImpl<$Res, HomeScreenEvent>;
}

/// @nodoc
class _$HomeScreenEventCopyWithImpl<$Res, $Val extends HomeScreenEvent>
    implements $HomeScreenEventCopyWith<$Res> {
  _$HomeScreenEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitializedImplCopyWith<$Res> {
  factory _$$InitializedImplCopyWith(
          _$InitializedImpl value, $Res Function(_$InitializedImpl) then) =
      __$$InitializedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitializedImplCopyWithImpl<$Res>
    extends _$HomeScreenEventCopyWithImpl<$Res, _$InitializedImpl>
    implements _$$InitializedImplCopyWith<$Res> {
  __$$InitializedImplCopyWithImpl(
      _$InitializedImpl _value, $Res Function(_$InitializedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitializedImpl implements _Initialized {
  const _$InitializedImpl();

  @override
  String toString() {
    return 'HomeScreenEvent.initialized()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitializedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
  }) {
    return initialized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
  }) {
    return initialized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements HomeScreenEvent {
  const factory _Initialized() = _$InitializedImpl;
}

/// @nodoc
mixin _$HomeScreenState {
  List<HotandNewModelData> get realsedInthePastList =>
      throw _privateConstructorUsedError;
  List<HotandNewModelData> get trendingNowList =>
      throw _privateConstructorUsedError;
  List<HotandNewModelData> get topTenList => throw _privateConstructorUsedError;
  List<HotandNewModelData> get tenseDramaList =>
      throw _privateConstructorUsedError;
  List<HotandNewModelData> get sountIndianCinemaList =>
      throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeScreenStateCopyWith<HomeScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeScreenStateCopyWith<$Res> {
  factory $HomeScreenStateCopyWith(
          HomeScreenState value, $Res Function(HomeScreenState) then) =
      _$HomeScreenStateCopyWithImpl<$Res, HomeScreenState>;
  @useResult
  $Res call(
      {List<HotandNewModelData> realsedInthePastList,
      List<HotandNewModelData> trendingNowList,
      List<HotandNewModelData> topTenList,
      List<HotandNewModelData> tenseDramaList,
      List<HotandNewModelData> sountIndianCinemaList,
      bool isLoading,
      bool isError});
}

/// @nodoc
class _$HomeScreenStateCopyWithImpl<$Res, $Val extends HomeScreenState>
    implements $HomeScreenStateCopyWith<$Res> {
  _$HomeScreenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? realsedInthePastList = null,
    Object? trendingNowList = null,
    Object? topTenList = null,
    Object? tenseDramaList = null,
    Object? sountIndianCinemaList = null,
    Object? isLoading = null,
    Object? isError = null,
  }) {
    return _then(_value.copyWith(
      realsedInthePastList: null == realsedInthePastList
          ? _value.realsedInthePastList
          : realsedInthePastList // ignore: cast_nullable_to_non_nullable
              as List<HotandNewModelData>,
      trendingNowList: null == trendingNowList
          ? _value.trendingNowList
          : trendingNowList // ignore: cast_nullable_to_non_nullable
              as List<HotandNewModelData>,
      topTenList: null == topTenList
          ? _value.topTenList
          : topTenList // ignore: cast_nullable_to_non_nullable
              as List<HotandNewModelData>,
      tenseDramaList: null == tenseDramaList
          ? _value.tenseDramaList
          : tenseDramaList // ignore: cast_nullable_to_non_nullable
              as List<HotandNewModelData>,
      sountIndianCinemaList: null == sountIndianCinemaList
          ? _value.sountIndianCinemaList
          : sountIndianCinemaList // ignore: cast_nullable_to_non_nullable
              as List<HotandNewModelData>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeScreenStateImplCopyWith<$Res>
    implements $HomeScreenStateCopyWith<$Res> {
  factory _$$HomeScreenStateImplCopyWith(_$HomeScreenStateImpl value,
          $Res Function(_$HomeScreenStateImpl) then) =
      __$$HomeScreenStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<HotandNewModelData> realsedInthePastList,
      List<HotandNewModelData> trendingNowList,
      List<HotandNewModelData> topTenList,
      List<HotandNewModelData> tenseDramaList,
      List<HotandNewModelData> sountIndianCinemaList,
      bool isLoading,
      bool isError});
}

/// @nodoc
class __$$HomeScreenStateImplCopyWithImpl<$Res>
    extends _$HomeScreenStateCopyWithImpl<$Res, _$HomeScreenStateImpl>
    implements _$$HomeScreenStateImplCopyWith<$Res> {
  __$$HomeScreenStateImplCopyWithImpl(
      _$HomeScreenStateImpl _value, $Res Function(_$HomeScreenStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? realsedInthePastList = null,
    Object? trendingNowList = null,
    Object? topTenList = null,
    Object? tenseDramaList = null,
    Object? sountIndianCinemaList = null,
    Object? isLoading = null,
    Object? isError = null,
  }) {
    return _then(_$HomeScreenStateImpl(
      realsedInthePastList: null == realsedInthePastList
          ? _value._realsedInthePastList
          : realsedInthePastList // ignore: cast_nullable_to_non_nullable
              as List<HotandNewModelData>,
      trendingNowList: null == trendingNowList
          ? _value._trendingNowList
          : trendingNowList // ignore: cast_nullable_to_non_nullable
              as List<HotandNewModelData>,
      topTenList: null == topTenList
          ? _value._topTenList
          : topTenList // ignore: cast_nullable_to_non_nullable
              as List<HotandNewModelData>,
      tenseDramaList: null == tenseDramaList
          ? _value._tenseDramaList
          : tenseDramaList // ignore: cast_nullable_to_non_nullable
              as List<HotandNewModelData>,
      sountIndianCinemaList: null == sountIndianCinemaList
          ? _value._sountIndianCinemaList
          : sountIndianCinemaList // ignore: cast_nullable_to_non_nullable
              as List<HotandNewModelData>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$HomeScreenStateImpl implements _HomeScreenState {
  const _$HomeScreenStateImpl(
      {required final List<HotandNewModelData> realsedInthePastList,
      required final List<HotandNewModelData> trendingNowList,
      required final List<HotandNewModelData> topTenList,
      required final List<HotandNewModelData> tenseDramaList,
      required final List<HotandNewModelData> sountIndianCinemaList,
      required this.isLoading,
      required this.isError})
      : _realsedInthePastList = realsedInthePastList,
        _trendingNowList = trendingNowList,
        _topTenList = topTenList,
        _tenseDramaList = tenseDramaList,
        _sountIndianCinemaList = sountIndianCinemaList;

  final List<HotandNewModelData> _realsedInthePastList;
  @override
  List<HotandNewModelData> get realsedInthePastList {
    if (_realsedInthePastList is EqualUnmodifiableListView)
      return _realsedInthePastList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_realsedInthePastList);
  }

  final List<HotandNewModelData> _trendingNowList;
  @override
  List<HotandNewModelData> get trendingNowList {
    if (_trendingNowList is EqualUnmodifiableListView) return _trendingNowList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_trendingNowList);
  }

  final List<HotandNewModelData> _topTenList;
  @override
  List<HotandNewModelData> get topTenList {
    if (_topTenList is EqualUnmodifiableListView) return _topTenList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_topTenList);
  }

  final List<HotandNewModelData> _tenseDramaList;
  @override
  List<HotandNewModelData> get tenseDramaList {
    if (_tenseDramaList is EqualUnmodifiableListView) return _tenseDramaList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tenseDramaList);
  }

  final List<HotandNewModelData> _sountIndianCinemaList;
  @override
  List<HotandNewModelData> get sountIndianCinemaList {
    if (_sountIndianCinemaList is EqualUnmodifiableListView)
      return _sountIndianCinemaList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sountIndianCinemaList);
  }

  @override
  final bool isLoading;
  @override
  final bool isError;

  @override
  String toString() {
    return 'HomeScreenState(realsedInthePastList: $realsedInthePastList, trendingNowList: $trendingNowList, topTenList: $topTenList, tenseDramaList: $tenseDramaList, sountIndianCinemaList: $sountIndianCinemaList, isLoading: $isLoading, isError: $isError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeScreenStateImpl &&
            const DeepCollectionEquality()
                .equals(other._realsedInthePastList, _realsedInthePastList) &&
            const DeepCollectionEquality()
                .equals(other._trendingNowList, _trendingNowList) &&
            const DeepCollectionEquality()
                .equals(other._topTenList, _topTenList) &&
            const DeepCollectionEquality()
                .equals(other._tenseDramaList, _tenseDramaList) &&
            const DeepCollectionEquality()
                .equals(other._sountIndianCinemaList, _sountIndianCinemaList) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_realsedInthePastList),
      const DeepCollectionEquality().hash(_trendingNowList),
      const DeepCollectionEquality().hash(_topTenList),
      const DeepCollectionEquality().hash(_tenseDramaList),
      const DeepCollectionEquality().hash(_sountIndianCinemaList),
      isLoading,
      isError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeScreenStateImplCopyWith<_$HomeScreenStateImpl> get copyWith =>
      __$$HomeScreenStateImplCopyWithImpl<_$HomeScreenStateImpl>(
          this, _$identity);
}

abstract class _HomeScreenState implements HomeScreenState {
  const factory _HomeScreenState(
      {required final List<HotandNewModelData> realsedInthePastList,
      required final List<HotandNewModelData> trendingNowList,
      required final List<HotandNewModelData> topTenList,
      required final List<HotandNewModelData> tenseDramaList,
      required final List<HotandNewModelData> sountIndianCinemaList,
      required final bool isLoading,
      required final bool isError}) = _$HomeScreenStateImpl;

  @override
  List<HotandNewModelData> get realsedInthePastList;
  @override
  List<HotandNewModelData> get trendingNowList;
  @override
  List<HotandNewModelData> get topTenList;
  @override
  List<HotandNewModelData> get tenseDramaList;
  @override
  List<HotandNewModelData> get sountIndianCinemaList;
  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  @JsonKey(ignore: true)
  _$$HomeScreenStateImplCopyWith<_$HomeScreenStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
