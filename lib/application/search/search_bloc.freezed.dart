// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(String movieQuery) searchMovie,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(String movieQuery)? searchMovie,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(String movieQuery)? searchMovie,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchInitilize value) initialize,
    required TResult Function(_SearchMovie value) searchMovie,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchInitilize value)? initialize,
    TResult? Function(_SearchMovie value)? searchMovie,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchInitilize value)? initialize,
    TResult Function(_SearchMovie value)? searchMovie,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchEventCopyWith<$Res> {
  factory $SearchEventCopyWith(
          SearchEvent value, $Res Function(SearchEvent) then) =
      _$SearchEventCopyWithImpl<$Res, SearchEvent>;
}

/// @nodoc
class _$SearchEventCopyWithImpl<$Res, $Val extends SearchEvent>
    implements $SearchEventCopyWith<$Res> {
  _$SearchEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SearchInitilizeImplCopyWith<$Res> {
  factory _$$SearchInitilizeImplCopyWith(_$SearchInitilizeImpl value,
          $Res Function(_$SearchInitilizeImpl) then) =
      __$$SearchInitilizeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SearchInitilizeImplCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$SearchInitilizeImpl>
    implements _$$SearchInitilizeImplCopyWith<$Res> {
  __$$SearchInitilizeImplCopyWithImpl(
      _$SearchInitilizeImpl _value, $Res Function(_$SearchInitilizeImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SearchInitilizeImpl
    with DiagnosticableTreeMixin
    implements _SearchInitilize {
  const _$SearchInitilizeImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SearchEvent.initialize()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'SearchEvent.initialize'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SearchInitilizeImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(String movieQuery) searchMovie,
  }) {
    return initialize();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(String movieQuery)? searchMovie,
  }) {
    return initialize?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(String movieQuery)? searchMovie,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchInitilize value) initialize,
    required TResult Function(_SearchMovie value) searchMovie,
  }) {
    return initialize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchInitilize value)? initialize,
    TResult? Function(_SearchMovie value)? searchMovie,
  }) {
    return initialize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchInitilize value)? initialize,
    TResult Function(_SearchMovie value)? searchMovie,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(this);
    }
    return orElse();
  }
}

abstract class _SearchInitilize implements SearchEvent {
  const factory _SearchInitilize() = _$SearchInitilizeImpl;
}

/// @nodoc
abstract class _$$SearchMovieImplCopyWith<$Res> {
  factory _$$SearchMovieImplCopyWith(
          _$SearchMovieImpl value, $Res Function(_$SearchMovieImpl) then) =
      __$$SearchMovieImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String movieQuery});
}

/// @nodoc
class __$$SearchMovieImplCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$SearchMovieImpl>
    implements _$$SearchMovieImplCopyWith<$Res> {
  __$$SearchMovieImplCopyWithImpl(
      _$SearchMovieImpl _value, $Res Function(_$SearchMovieImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movieQuery = null,
  }) {
    return _then(_$SearchMovieImpl(
      movieQuery: null == movieQuery
          ? _value.movieQuery
          : movieQuery // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchMovieImpl with DiagnosticableTreeMixin implements _SearchMovie {
  const _$SearchMovieImpl({required this.movieQuery});

  @override
  final String movieQuery;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SearchEvent.searchMovie(movieQuery: $movieQuery)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SearchEvent.searchMovie'))
      ..add(DiagnosticsProperty('movieQuery', movieQuery));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchMovieImpl &&
            (identical(other.movieQuery, movieQuery) ||
                other.movieQuery == movieQuery));
  }

  @override
  int get hashCode => Object.hash(runtimeType, movieQuery);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchMovieImplCopyWith<_$SearchMovieImpl> get copyWith =>
      __$$SearchMovieImplCopyWithImpl<_$SearchMovieImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(String movieQuery) searchMovie,
  }) {
    return searchMovie(movieQuery);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(String movieQuery)? searchMovie,
  }) {
    return searchMovie?.call(movieQuery);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(String movieQuery)? searchMovie,
    required TResult orElse(),
  }) {
    if (searchMovie != null) {
      return searchMovie(movieQuery);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchInitilize value) initialize,
    required TResult Function(_SearchMovie value) searchMovie,
  }) {
    return searchMovie(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchInitilize value)? initialize,
    TResult? Function(_SearchMovie value)? searchMovie,
  }) {
    return searchMovie?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchInitilize value)? initialize,
    TResult Function(_SearchMovie value)? searchMovie,
    required TResult orElse(),
  }) {
    if (searchMovie != null) {
      return searchMovie(this);
    }
    return orElse();
  }
}

abstract class _SearchMovie implements SearchEvent {
  const factory _SearchMovie({required final String movieQuery}) =
      _$SearchMovieImpl;

  String get movieQuery;
  @JsonKey(ignore: true)
  _$$SearchMovieImplCopyWith<_$SearchMovieImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SearchState {
  List<Downloads> get idleMovie => throw _privateConstructorUsedError;
  List<SearchReponseData> get searchReult => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchStateCopyWith<SearchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStateCopyWith<$Res> {
  factory $SearchStateCopyWith(
          SearchState value, $Res Function(SearchState) then) =
      _$SearchStateCopyWithImpl<$Res, SearchState>;
  @useResult
  $Res call(
      {List<Downloads> idleMovie,
      List<SearchReponseData> searchReult,
      bool isLoading,
      bool isError});
}

/// @nodoc
class _$SearchStateCopyWithImpl<$Res, $Val extends SearchState>
    implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idleMovie = null,
    Object? searchReult = null,
    Object? isLoading = null,
    Object? isError = null,
  }) {
    return _then(_value.copyWith(
      idleMovie: null == idleMovie
          ? _value.idleMovie
          : idleMovie // ignore: cast_nullable_to_non_nullable
              as List<Downloads>,
      searchReult: null == searchReult
          ? _value.searchReult
          : searchReult // ignore: cast_nullable_to_non_nullable
              as List<SearchReponseData>,
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
abstract class _$$SearchStateImplCopyWith<$Res>
    implements $SearchStateCopyWith<$Res> {
  factory _$$SearchStateImplCopyWith(
          _$SearchStateImpl value, $Res Function(_$SearchStateImpl) then) =
      __$$SearchStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Downloads> idleMovie,
      List<SearchReponseData> searchReult,
      bool isLoading,
      bool isError});
}

/// @nodoc
class __$$SearchStateImplCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$SearchStateImpl>
    implements _$$SearchStateImplCopyWith<$Res> {
  __$$SearchStateImplCopyWithImpl(
      _$SearchStateImpl _value, $Res Function(_$SearchStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idleMovie = null,
    Object? searchReult = null,
    Object? isLoading = null,
    Object? isError = null,
  }) {
    return _then(_$SearchStateImpl(
      idleMovie: null == idleMovie
          ? _value._idleMovie
          : idleMovie // ignore: cast_nullable_to_non_nullable
              as List<Downloads>,
      searchReult: null == searchReult
          ? _value._searchReult
          : searchReult // ignore: cast_nullable_to_non_nullable
              as List<SearchReponseData>,
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

class _$SearchStateImpl with DiagnosticableTreeMixin implements _SearchState {
  const _$SearchStateImpl(
      {required final List<Downloads> idleMovie,
      required final List<SearchReponseData> searchReult,
      required this.isLoading,
      required this.isError})
      : _idleMovie = idleMovie,
        _searchReult = searchReult;

  final List<Downloads> _idleMovie;
  @override
  List<Downloads> get idleMovie {
    if (_idleMovie is EqualUnmodifiableListView) return _idleMovie;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_idleMovie);
  }

  final List<SearchReponseData> _searchReult;
  @override
  List<SearchReponseData> get searchReult {
    if (_searchReult is EqualUnmodifiableListView) return _searchReult;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_searchReult);
  }

  @override
  final bool isLoading;
  @override
  final bool isError;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SearchState(idleMovie: $idleMovie, searchReult: $searchReult, isLoading: $isLoading, isError: $isError)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SearchState'))
      ..add(DiagnosticsProperty('idleMovie', idleMovie))
      ..add(DiagnosticsProperty('searchReult', searchReult))
      ..add(DiagnosticsProperty('isLoading', isLoading))
      ..add(DiagnosticsProperty('isError', isError));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchStateImpl &&
            const DeepCollectionEquality()
                .equals(other._idleMovie, _idleMovie) &&
            const DeepCollectionEquality()
                .equals(other._searchReult, _searchReult) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_idleMovie),
      const DeepCollectionEquality().hash(_searchReult),
      isLoading,
      isError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchStateImplCopyWith<_$SearchStateImpl> get copyWith =>
      __$$SearchStateImplCopyWithImpl<_$SearchStateImpl>(this, _$identity);
}

abstract class _SearchState implements SearchState {
  const factory _SearchState(
      {required final List<Downloads> idleMovie,
      required final List<SearchReponseData> searchReult,
      required final bool isLoading,
      required final bool isError}) = _$SearchStateImpl;

  @override
  List<Downloads> get idleMovie;
  @override
  List<SearchReponseData> get searchReult;
  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  @JsonKey(ignore: true)
  _$$SearchStateImplCopyWith<_$SearchStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
