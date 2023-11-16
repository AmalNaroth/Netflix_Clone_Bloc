// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hotand_new_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HotandNewEvent {
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
abstract class $HotandNewEventCopyWith<$Res> {
  factory $HotandNewEventCopyWith(
          HotandNewEvent value, $Res Function(HotandNewEvent) then) =
      _$HotandNewEventCopyWithImpl<$Res, HotandNewEvent>;
}

/// @nodoc
class _$HotandNewEventCopyWithImpl<$Res, $Val extends HotandNewEvent>
    implements $HotandNewEventCopyWith<$Res> {
  _$HotandNewEventCopyWithImpl(this._value, this._then);

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
    extends _$HotandNewEventCopyWithImpl<$Res, _$InitializedImpl>
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
    return 'HotandNewEvent.initialized()';
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

abstract class _Initialized implements HotandNewEvent {
  const factory _Initialized() = _$InitializedImpl;
}

/// @nodoc
mixin _$HotandNewState {
  List<HotandNewModelData> get commingSoonList =>
      throw _privateConstructorUsedError;
  List<HotandNewModelData> get everyoneWatchingList =>
      throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HotandNewStateCopyWith<HotandNewState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HotandNewStateCopyWith<$Res> {
  factory $HotandNewStateCopyWith(
          HotandNewState value, $Res Function(HotandNewState) then) =
      _$HotandNewStateCopyWithImpl<$Res, HotandNewState>;
  @useResult
  $Res call(
      {List<HotandNewModelData> commingSoonList,
      List<HotandNewModelData> everyoneWatchingList,
      bool isLoading,
      bool isError});
}

/// @nodoc
class _$HotandNewStateCopyWithImpl<$Res, $Val extends HotandNewState>
    implements $HotandNewStateCopyWith<$Res> {
  _$HotandNewStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? commingSoonList = null,
    Object? everyoneWatchingList = null,
    Object? isLoading = null,
    Object? isError = null,
  }) {
    return _then(_value.copyWith(
      commingSoonList: null == commingSoonList
          ? _value.commingSoonList
          : commingSoonList // ignore: cast_nullable_to_non_nullable
              as List<HotandNewModelData>,
      everyoneWatchingList: null == everyoneWatchingList
          ? _value.everyoneWatchingList
          : everyoneWatchingList // ignore: cast_nullable_to_non_nullable
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
abstract class _$$HotandNewStateImplCopyWith<$Res>
    implements $HotandNewStateCopyWith<$Res> {
  factory _$$HotandNewStateImplCopyWith(_$HotandNewStateImpl value,
          $Res Function(_$HotandNewStateImpl) then) =
      __$$HotandNewStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<HotandNewModelData> commingSoonList,
      List<HotandNewModelData> everyoneWatchingList,
      bool isLoading,
      bool isError});
}

/// @nodoc
class __$$HotandNewStateImplCopyWithImpl<$Res>
    extends _$HotandNewStateCopyWithImpl<$Res, _$HotandNewStateImpl>
    implements _$$HotandNewStateImplCopyWith<$Res> {
  __$$HotandNewStateImplCopyWithImpl(
      _$HotandNewStateImpl _value, $Res Function(_$HotandNewStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? commingSoonList = null,
    Object? everyoneWatchingList = null,
    Object? isLoading = null,
    Object? isError = null,
  }) {
    return _then(_$HotandNewStateImpl(
      commingSoonList: null == commingSoonList
          ? _value._commingSoonList
          : commingSoonList // ignore: cast_nullable_to_non_nullable
              as List<HotandNewModelData>,
      everyoneWatchingList: null == everyoneWatchingList
          ? _value._everyoneWatchingList
          : everyoneWatchingList // ignore: cast_nullable_to_non_nullable
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

class _$HotandNewStateImpl implements _HotandNewState {
  const _$HotandNewStateImpl(
      {required final List<HotandNewModelData> commingSoonList,
      required final List<HotandNewModelData> everyoneWatchingList,
      required this.isLoading,
      required this.isError})
      : _commingSoonList = commingSoonList,
        _everyoneWatchingList = everyoneWatchingList;

  final List<HotandNewModelData> _commingSoonList;
  @override
  List<HotandNewModelData> get commingSoonList {
    if (_commingSoonList is EqualUnmodifiableListView) return _commingSoonList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_commingSoonList);
  }

  final List<HotandNewModelData> _everyoneWatchingList;
  @override
  List<HotandNewModelData> get everyoneWatchingList {
    if (_everyoneWatchingList is EqualUnmodifiableListView)
      return _everyoneWatchingList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_everyoneWatchingList);
  }

  @override
  final bool isLoading;
  @override
  final bool isError;

  @override
  String toString() {
    return 'HotandNewState(commingSoonList: $commingSoonList, everyoneWatchingList: $everyoneWatchingList, isLoading: $isLoading, isError: $isError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HotandNewStateImpl &&
            const DeepCollectionEquality()
                .equals(other._commingSoonList, _commingSoonList) &&
            const DeepCollectionEquality()
                .equals(other._everyoneWatchingList, _everyoneWatchingList) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_commingSoonList),
      const DeepCollectionEquality().hash(_everyoneWatchingList),
      isLoading,
      isError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HotandNewStateImplCopyWith<_$HotandNewStateImpl> get copyWith =>
      __$$HotandNewStateImplCopyWithImpl<_$HotandNewStateImpl>(
          this, _$identity);
}

abstract class _HotandNewState implements HotandNewState {
  const factory _HotandNewState(
      {required final List<HotandNewModelData> commingSoonList,
      required final List<HotandNewModelData> everyoneWatchingList,
      required final bool isLoading,
      required final bool isError}) = _$HotandNewStateImpl;

  @override
  List<HotandNewModelData> get commingSoonList;
  @override
  List<HotandNewModelData> get everyoneWatchingList;
  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  @JsonKey(ignore: true)
  _$$HotandNewStateImplCopyWith<_$HotandNewStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
