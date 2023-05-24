part of 'trending_movie_bloc.dart';

@freezed
class TrendingMovieState extends BaseBlocState with _$TrendingMovieState {
  const factory TrendingMovieState.initial() = _Initial;
  const factory TrendingMovieState.loading() = _Loading;
  const factory TrendingMovieState.loaded(List<TrendingMovieEntity> movies) =
      _Loaded;
  const factory TrendingMovieState.error(String message) = _Error;
}
