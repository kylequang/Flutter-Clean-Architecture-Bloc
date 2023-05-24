import 'package:flutter_boilerplate_clean_architecture_bloc/core/base/base_use_case.dart';
import 'package:flutter_boilerplate_clean_architecture_bloc/modules/home/data/repositories/movie_repository_impl.dart';
import 'package:flutter_boilerplate_clean_architecture_bloc/modules/home/domain/entities/trending_movie_entity.dart';
import 'package:injectable/injectable.dart';

import '../repositories/movie_repository.dart';

@injectable
class MovieUseCase extends BaseUseCaseSimple<List<TrendingMovieEntity>> {
  MovieUseCase(this._repository) : super();

  final MovieRepository _repository;

  @override
  Future<List<TrendingMovieEntity>> request() {
    return _repository.getTrendingMovies();
  }
}
