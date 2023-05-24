import 'package:freezed_annotation/freezed_annotation.dart';
part 'trending_movie_entity.freezed.dart';

@freezed
abstract class TrendingMovieEntity with _$TrendingMovieEntity {
  const factory TrendingMovieEntity({
    required int id,
    required bool adult,
    required String title,
    required bool video,
    required double popularity,
    required String overview,
    String? backdropPath,
    required List<int> genreIds,
    required String originalLanguage,
    required String originalTitle,
    String? posterPath,
    required String releaseDate,
    required double voteAverage,
    required int voteCount,
  }) = _TrendingMovieEntity;
}
