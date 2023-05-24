// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
part 'movie_model.freezed.dart';
part 'movie_model.g.dart';

@freezed
class MovieModel with _$MovieModel {
  const factory MovieModel({
    required int page,
    required List<MovieModelResult> results,
    @JsonKey(name: 'total_pages') required int totalPages,
    @JsonKey(name: 'total_results') required int totalResults,
  }) = _MovieModel;

  factory MovieModel.fromJson(Map<String, dynamic> json) =>
      _$MovieModelFromJson(json);
}

@freezed
abstract class MovieModelResult with _$MovieModelResult {
  const MovieModelResult._();
  const factory MovieModelResult({
    required int id,
    required bool adult,
    required String title,
    required bool video,
    required double popularity,
    required String overview,
    @JsonKey(name: 'backdrop_path') required String backdropPath,
    @JsonKey(name: 'genre_ids') required List<int> genreIds,
    @JsonKey(name: 'original_language') required String originalLanguage,
    @JsonKey(name: 'original_title') required String originalTitle,
    @JsonKey(name: 'poster_path') required String posterPath,
    @JsonKey(name: 'release_date') required String releaseDate,
    @JsonKey(name: 'vote_average') required double voteAverage,
    @JsonKey(name: 'vote_count') required int voteCount,
  }) = _MovieModelResult;

  factory MovieModelResult.fromJson(Map<String, dynamic> json) =>
      _$MovieModelResultFromJson(json);
}
