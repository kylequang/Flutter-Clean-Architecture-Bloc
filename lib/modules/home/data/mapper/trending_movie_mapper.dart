import 'package:flutter_boilerplate_clean_architecture_bloc/modules/home/domain/entities/trending_movie_entity.dart';

import '../../../../core/mapper/data_mapper.dart';
import '../models/movie/movie_model.dart';

class TrendingMovieMapper
    extends DataMapper<MovieModelResult, TrendingMovieEntity> {
  @override
  TrendingMovieEntity mapToEntity(MovieModelResult data) {
    return TrendingMovieEntity(
      id: data.id,
      adult: data.adult,
      title: data.title,
      video: data.video,
      popularity: data.popularity,
      overview: data.overview,
      backdropPath: data.backdropPath,
      genreIds: data.genreIds,
      originalLanguage: data.originalLanguage,
      originalTitle: data.originalTitle,
      posterPath: data.posterPath,
      releaseDate: data.releaseDate,
      voteAverage: data.voteAverage,
      voteCount: data.voteCount,
    );
  }
}
