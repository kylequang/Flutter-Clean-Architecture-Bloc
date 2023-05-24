// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MovieModel _$MovieModelFromJson(Map<String, dynamic> json) {
  return _MovieModel.fromJson(json);
}

/// @nodoc
mixin _$MovieModel {
  int get page => throw _privateConstructorUsedError;
  List<MovieModelResult> get results => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_pages')
  int get totalPages => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_results')
  int get totalResults => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieModelCopyWith<MovieModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieModelCopyWith<$Res> {
  factory $MovieModelCopyWith(
          MovieModel value, $Res Function(MovieModel) then) =
      _$MovieModelCopyWithImpl<$Res, MovieModel>;
  @useResult
  $Res call(
      {int page,
      List<MovieModelResult> results,
      @JsonKey(name: 'total_pages') int totalPages,
      @JsonKey(name: 'total_results') int totalResults});
}

/// @nodoc
class _$MovieModelCopyWithImpl<$Res, $Val extends MovieModel>
    implements $MovieModelCopyWith<$Res> {
  _$MovieModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? results = null,
    Object? totalPages = null,
    Object? totalResults = null,
  }) {
    return _then(_value.copyWith(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<MovieModelResult>,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      totalResults: null == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MovieModelCopyWith<$Res>
    implements $MovieModelCopyWith<$Res> {
  factory _$$_MovieModelCopyWith(
          _$_MovieModel value, $Res Function(_$_MovieModel) then) =
      __$$_MovieModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int page,
      List<MovieModelResult> results,
      @JsonKey(name: 'total_pages') int totalPages,
      @JsonKey(name: 'total_results') int totalResults});
}

/// @nodoc
class __$$_MovieModelCopyWithImpl<$Res>
    extends _$MovieModelCopyWithImpl<$Res, _$_MovieModel>
    implements _$$_MovieModelCopyWith<$Res> {
  __$$_MovieModelCopyWithImpl(
      _$_MovieModel _value, $Res Function(_$_MovieModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? results = null,
    Object? totalPages = null,
    Object? totalResults = null,
  }) {
    return _then(_$_MovieModel(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<MovieModelResult>,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      totalResults: null == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MovieModel implements _MovieModel {
  const _$_MovieModel(
      {required this.page,
      required final List<MovieModelResult> results,
      @JsonKey(name: 'total_pages') required this.totalPages,
      @JsonKey(name: 'total_results') required this.totalResults})
      : _results = results;

  factory _$_MovieModel.fromJson(Map<String, dynamic> json) =>
      _$$_MovieModelFromJson(json);

  @override
  final int page;
  final List<MovieModelResult> _results;
  @override
  List<MovieModelResult> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  @JsonKey(name: 'total_pages')
  final int totalPages;
  @override
  @JsonKey(name: 'total_results')
  final int totalResults;

  @override
  String toString() {
    return 'MovieModel(page: $page, results: $results, totalPages: $totalPages, totalResults: $totalResults)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MovieModel &&
            (identical(other.page, page) || other.page == page) &&
            const DeepCollectionEquality().equals(other._results, _results) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            (identical(other.totalResults, totalResults) ||
                other.totalResults == totalResults));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, page,
      const DeepCollectionEquality().hash(_results), totalPages, totalResults);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MovieModelCopyWith<_$_MovieModel> get copyWith =>
      __$$_MovieModelCopyWithImpl<_$_MovieModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MovieModelToJson(
      this,
    );
  }
}

abstract class _MovieModel implements MovieModel {
  const factory _MovieModel(
          {required final int page,
          required final List<MovieModelResult> results,
          @JsonKey(name: 'total_pages') required final int totalPages,
          @JsonKey(name: 'total_results') required final int totalResults}) =
      _$_MovieModel;

  factory _MovieModel.fromJson(Map<String, dynamic> json) =
      _$_MovieModel.fromJson;

  @override
  int get page;
  @override
  List<MovieModelResult> get results;
  @override
  @JsonKey(name: 'total_pages')
  int get totalPages;
  @override
  @JsonKey(name: 'total_results')
  int get totalResults;
  @override
  @JsonKey(ignore: true)
  _$$_MovieModelCopyWith<_$_MovieModel> get copyWith =>
      throw _privateConstructorUsedError;
}

MovieModelResult _$MovieModelResultFromJson(Map<String, dynamic> json) {
  return _MovieModelResult.fromJson(json);
}

/// @nodoc
mixin _$MovieModelResult {
  int get id => throw _privateConstructorUsedError;
  bool get adult => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  bool get video => throw _privateConstructorUsedError;
  double get popularity => throw _privateConstructorUsedError;
  String get overview => throw _privateConstructorUsedError;
  @JsonKey(name: 'backdrop_path')
  String get backdropPath => throw _privateConstructorUsedError;
  @JsonKey(name: 'genre_ids')
  List<int> get genreIds => throw _privateConstructorUsedError;
  @JsonKey(name: 'original_language')
  String get originalLanguage => throw _privateConstructorUsedError;
  @JsonKey(name: 'original_title')
  String get originalTitle => throw _privateConstructorUsedError;
  @JsonKey(name: 'poster_path')
  String get posterPath => throw _privateConstructorUsedError;
  @JsonKey(name: 'release_date')
  String get releaseDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'vote_average')
  double get voteAverage => throw _privateConstructorUsedError;
  @JsonKey(name: 'vote_count')
  int get voteCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieModelResultCopyWith<MovieModelResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieModelResultCopyWith<$Res> {
  factory $MovieModelResultCopyWith(
          MovieModelResult value, $Res Function(MovieModelResult) then) =
      _$MovieModelResultCopyWithImpl<$Res, MovieModelResult>;
  @useResult
  $Res call(
      {int id,
      bool adult,
      String title,
      bool video,
      double popularity,
      String overview,
      @JsonKey(name: 'backdrop_path') String backdropPath,
      @JsonKey(name: 'genre_ids') List<int> genreIds,
      @JsonKey(name: 'original_language') String originalLanguage,
      @JsonKey(name: 'original_title') String originalTitle,
      @JsonKey(name: 'poster_path') String posterPath,
      @JsonKey(name: 'release_date') String releaseDate,
      @JsonKey(name: 'vote_average') double voteAverage,
      @JsonKey(name: 'vote_count') int voteCount});
}

/// @nodoc
class _$MovieModelResultCopyWithImpl<$Res, $Val extends MovieModelResult>
    implements $MovieModelResultCopyWith<$Res> {
  _$MovieModelResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? adult = null,
    Object? title = null,
    Object? video = null,
    Object? popularity = null,
    Object? overview = null,
    Object? backdropPath = null,
    Object? genreIds = null,
    Object? originalLanguage = null,
    Object? originalTitle = null,
    Object? posterPath = null,
    Object? releaseDate = null,
    Object? voteAverage = null,
    Object? voteCount = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      adult: null == adult
          ? _value.adult
          : adult // ignore: cast_nullable_to_non_nullable
              as bool,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      video: null == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as bool,
      popularity: null == popularity
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as double,
      overview: null == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      backdropPath: null == backdropPath
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String,
      genreIds: null == genreIds
          ? _value.genreIds
          : genreIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
      originalLanguage: null == originalLanguage
          ? _value.originalLanguage
          : originalLanguage // ignore: cast_nullable_to_non_nullable
              as String,
      originalTitle: null == originalTitle
          ? _value.originalTitle
          : originalTitle // ignore: cast_nullable_to_non_nullable
              as String,
      posterPath: null == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String,
      releaseDate: null == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String,
      voteAverage: null == voteAverage
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double,
      voteCount: null == voteCount
          ? _value.voteCount
          : voteCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MovieModelResultCopyWith<$Res>
    implements $MovieModelResultCopyWith<$Res> {
  factory _$$_MovieModelResultCopyWith(
          _$_MovieModelResult value, $Res Function(_$_MovieModelResult) then) =
      __$$_MovieModelResultCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      bool adult,
      String title,
      bool video,
      double popularity,
      String overview,
      @JsonKey(name: 'backdrop_path') String backdropPath,
      @JsonKey(name: 'genre_ids') List<int> genreIds,
      @JsonKey(name: 'original_language') String originalLanguage,
      @JsonKey(name: 'original_title') String originalTitle,
      @JsonKey(name: 'poster_path') String posterPath,
      @JsonKey(name: 'release_date') String releaseDate,
      @JsonKey(name: 'vote_average') double voteAverage,
      @JsonKey(name: 'vote_count') int voteCount});
}

/// @nodoc
class __$$_MovieModelResultCopyWithImpl<$Res>
    extends _$MovieModelResultCopyWithImpl<$Res, _$_MovieModelResult>
    implements _$$_MovieModelResultCopyWith<$Res> {
  __$$_MovieModelResultCopyWithImpl(
      _$_MovieModelResult _value, $Res Function(_$_MovieModelResult) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? adult = null,
    Object? title = null,
    Object? video = null,
    Object? popularity = null,
    Object? overview = null,
    Object? backdropPath = null,
    Object? genreIds = null,
    Object? originalLanguage = null,
    Object? originalTitle = null,
    Object? posterPath = null,
    Object? releaseDate = null,
    Object? voteAverage = null,
    Object? voteCount = null,
  }) {
    return _then(_$_MovieModelResult(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      adult: null == adult
          ? _value.adult
          : adult // ignore: cast_nullable_to_non_nullable
              as bool,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      video: null == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as bool,
      popularity: null == popularity
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as double,
      overview: null == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      backdropPath: null == backdropPath
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String,
      genreIds: null == genreIds
          ? _value._genreIds
          : genreIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
      originalLanguage: null == originalLanguage
          ? _value.originalLanguage
          : originalLanguage // ignore: cast_nullable_to_non_nullable
              as String,
      originalTitle: null == originalTitle
          ? _value.originalTitle
          : originalTitle // ignore: cast_nullable_to_non_nullable
              as String,
      posterPath: null == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String,
      releaseDate: null == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String,
      voteAverage: null == voteAverage
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double,
      voteCount: null == voteCount
          ? _value.voteCount
          : voteCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MovieModelResult extends _MovieModelResult {
  const _$_MovieModelResult(
      {required this.id,
      required this.adult,
      required this.title,
      required this.video,
      required this.popularity,
      required this.overview,
      @JsonKey(name: 'backdrop_path') required this.backdropPath,
      @JsonKey(name: 'genre_ids') required final List<int> genreIds,
      @JsonKey(name: 'original_language') required this.originalLanguage,
      @JsonKey(name: 'original_title') required this.originalTitle,
      @JsonKey(name: 'poster_path') required this.posterPath,
      @JsonKey(name: 'release_date') required this.releaseDate,
      @JsonKey(name: 'vote_average') required this.voteAverage,
      @JsonKey(name: 'vote_count') required this.voteCount})
      : _genreIds = genreIds,
        super._();

  factory _$_MovieModelResult.fromJson(Map<String, dynamic> json) =>
      _$$_MovieModelResultFromJson(json);

  @override
  final int id;
  @override
  final bool adult;
  @override
  final String title;
  @override
  final bool video;
  @override
  final double popularity;
  @override
  final String overview;
  @override
  @JsonKey(name: 'backdrop_path')
  final String backdropPath;
  final List<int> _genreIds;
  @override
  @JsonKey(name: 'genre_ids')
  List<int> get genreIds {
    if (_genreIds is EqualUnmodifiableListView) return _genreIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_genreIds);
  }

  @override
  @JsonKey(name: 'original_language')
  final String originalLanguage;
  @override
  @JsonKey(name: 'original_title')
  final String originalTitle;
  @override
  @JsonKey(name: 'poster_path')
  final String posterPath;
  @override
  @JsonKey(name: 'release_date')
  final String releaseDate;
  @override
  @JsonKey(name: 'vote_average')
  final double voteAverage;
  @override
  @JsonKey(name: 'vote_count')
  final int voteCount;

  @override
  String toString() {
    return 'MovieModelResult(id: $id, adult: $adult, title: $title, video: $video, popularity: $popularity, overview: $overview, backdropPath: $backdropPath, genreIds: $genreIds, originalLanguage: $originalLanguage, originalTitle: $originalTitle, posterPath: $posterPath, releaseDate: $releaseDate, voteAverage: $voteAverage, voteCount: $voteCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MovieModelResult &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.adult, adult) || other.adult == adult) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.video, video) || other.video == video) &&
            (identical(other.popularity, popularity) ||
                other.popularity == popularity) &&
            (identical(other.overview, overview) ||
                other.overview == overview) &&
            (identical(other.backdropPath, backdropPath) ||
                other.backdropPath == backdropPath) &&
            const DeepCollectionEquality().equals(other._genreIds, _genreIds) &&
            (identical(other.originalLanguage, originalLanguage) ||
                other.originalLanguage == originalLanguage) &&
            (identical(other.originalTitle, originalTitle) ||
                other.originalTitle == originalTitle) &&
            (identical(other.posterPath, posterPath) ||
                other.posterPath == posterPath) &&
            (identical(other.releaseDate, releaseDate) ||
                other.releaseDate == releaseDate) &&
            (identical(other.voteAverage, voteAverage) ||
                other.voteAverage == voteAverage) &&
            (identical(other.voteCount, voteCount) ||
                other.voteCount == voteCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      adult,
      title,
      video,
      popularity,
      overview,
      backdropPath,
      const DeepCollectionEquality().hash(_genreIds),
      originalLanguage,
      originalTitle,
      posterPath,
      releaseDate,
      voteAverage,
      voteCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MovieModelResultCopyWith<_$_MovieModelResult> get copyWith =>
      __$$_MovieModelResultCopyWithImpl<_$_MovieModelResult>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MovieModelResultToJson(
      this,
    );
  }
}

abstract class _MovieModelResult extends MovieModelResult {
  const factory _MovieModelResult(
      {required final int id,
      required final bool adult,
      required final String title,
      required final bool video,
      required final double popularity,
      required final String overview,
      @JsonKey(name: 'backdrop_path')
          required final String backdropPath,
      @JsonKey(name: 'genre_ids')
          required final List<int> genreIds,
      @JsonKey(name: 'original_language')
          required final String originalLanguage,
      @JsonKey(name: 'original_title')
          required final String originalTitle,
      @JsonKey(name: 'poster_path')
          required final String posterPath,
      @JsonKey(name: 'release_date')
          required final String releaseDate,
      @JsonKey(name: 'vote_average')
          required final double voteAverage,
      @JsonKey(name: 'vote_count')
          required final int voteCount}) = _$_MovieModelResult;
  const _MovieModelResult._() : super._();

  factory _MovieModelResult.fromJson(Map<String, dynamic> json) =
      _$_MovieModelResult.fromJson;

  @override
  int get id;
  @override
  bool get adult;
  @override
  String get title;
  @override
  bool get video;
  @override
  double get popularity;
  @override
  String get overview;
  @override
  @JsonKey(name: 'backdrop_path')
  String get backdropPath;
  @override
  @JsonKey(name: 'genre_ids')
  List<int> get genreIds;
  @override
  @JsonKey(name: 'original_language')
  String get originalLanguage;
  @override
  @JsonKey(name: 'original_title')
  String get originalTitle;
  @override
  @JsonKey(name: 'poster_path')
  String get posterPath;
  @override
  @JsonKey(name: 'release_date')
  String get releaseDate;
  @override
  @JsonKey(name: 'vote_average')
  double get voteAverage;
  @override
  @JsonKey(name: 'vote_count')
  int get voteCount;
  @override
  @JsonKey(ignore: true)
  _$$_MovieModelResultCopyWith<_$_MovieModelResult> get copyWith =>
      throw _privateConstructorUsedError;
}
