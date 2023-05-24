// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MovieModel _$$_MovieModelFromJson(Map<String, dynamic> json) =>
    _$_MovieModel(
      page: json['page'] as int,
      results: (json['results'] as List<dynamic>)
          .map((e) => MovieModelResult.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalPages: json['total_pages'] as int,
      totalResults: json['total_results'] as int,
    );

Map<String, dynamic> _$$_MovieModelToJson(_$_MovieModel instance) =>
    <String, dynamic>{
      'page': instance.page,
      'results': instance.results,
      'total_pages': instance.totalPages,
      'total_results': instance.totalResults,
    };

_$_MovieModelResult _$$_MovieModelResultFromJson(Map<String, dynamic> json) =>
    _$_MovieModelResult(
      id: json['id'] as int,
      adult: json['adult'] as bool,
      title: json['title'] as String,
      video: json['video'] as bool,
      popularity: (json['popularity'] as num).toDouble(),
      overview: json['overview'] as String,
      backdropPath: json['backdrop_path'] as String,
      genreIds:
          (json['genre_ids'] as List<dynamic>).map((e) => e as int).toList(),
      originalLanguage: json['original_language'] as String,
      originalTitle: json['original_title'] as String,
      posterPath: json['poster_path'] as String,
      releaseDate: json['release_date'] as String,
      voteAverage: (json['vote_average'] as num).toDouble(),
      voteCount: json['vote_count'] as int,
    );

Map<String, dynamic> _$$_MovieModelResultToJson(_$_MovieModelResult instance) =>
    <String, dynamic>{
      'id': instance.id,
      'adult': instance.adult,
      'title': instance.title,
      'video': instance.video,
      'popularity': instance.popularity,
      'overview': instance.overview,
      'backdrop_path': instance.backdropPath,
      'genre_ids': instance.genreIds,
      'original_language': instance.originalLanguage,
      'original_title': instance.originalTitle,
      'poster_path': instance.posterPath,
      'release_date': instance.releaseDate,
      'vote_average': instance.voteAverage,
      'vote_count': instance.voteCount,
    };
