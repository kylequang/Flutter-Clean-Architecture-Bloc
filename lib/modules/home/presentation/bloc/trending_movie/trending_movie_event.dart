part of 'trending_movie_bloc.dart';

@freezed
class TrendingMovieEvent with _$TrendingMovieEvent {
  const factory TrendingMovieEvent.started() = _Started;
}