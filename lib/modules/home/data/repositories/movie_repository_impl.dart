// ignore_for_file: avoid_print
import 'package:dio/dio.dart';
import 'package:flutter_boilerplate_clean_architecture_bloc/core/data/remote/dio_builder.dart';
import 'package:flutter_boilerplate_clean_architecture_bloc/modules/home/domain/entities/trending_movie_entity.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/constants/end_point.dart';
import '../../../../core/exception_handler/app_error.dart';
import '../../domain/repositories/movie_repository.dart';
import '../mapper/trending_movie_mapper.dart';
import '../models/movie/movie_model.dart';

@Injectable(as: MovieRepository)
class MovieRepositoryImpl implements MovieRepository {
  @override
  Future<List<TrendingMovieEntity>> getTrendingMovies() async {
    try {
      final response = await DioBuilder.getInstance()
          .get("/${APIConstants.trending}/movie/day");
      final MovieModel trendingMovie = MovieModel.fromJson(response.data);
      final List<TrendingMovieEntity> mapToListEntity =
          TrendingMovieMapper().mapToListEntity(trendingMovie.results);
      return mapToListEntity;
    } catch (error) {
      if (error is DioError) {
        final baseException = DefaultAppErrorHandler().handleDioError(error);
        throw Exception(baseException.message);
      } else {
        throw Exception('Failed to fetch trending movies: $error');
      }
    }
  }
}
