import 'package:injectable/injectable.dart';
import '../entities/trending_movie_entity.dart';

@factoryMethod
abstract class MovieRepository {
  @preResolve
  Future<List<TrendingMovieEntity>> getTrendingMovies();
  //more
}
