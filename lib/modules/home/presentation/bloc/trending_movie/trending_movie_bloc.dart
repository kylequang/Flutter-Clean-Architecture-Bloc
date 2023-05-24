import 'package:bloc/bloc.dart';
import 'package:flutter_boilerplate_clean_architecture_bloc/core/base/bloc/base_bloc_state.dart';
import 'package:flutter_boilerplate_clean_architecture_bloc/modules/home/domain/usecase/movie.usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../domain/entities/trending_movie_entity.dart';

part 'trending_movie_event.dart';
part 'trending_movie_state.dart';
part 'trending_movie_bloc.freezed.dart';

class TrendingMovieBloc extends Bloc<TrendingMovieEvent, TrendingMovieState> {
  final MovieUseCase movieUseCase;
  TrendingMovieBloc(this.movieUseCase) : super(const _Initial()) {
    on<TrendingMovieEvent>((event, emit) async {
      if (event == const TrendingMovieEvent.started()) {
        emit(const TrendingMovieState.initial());
      }
      try {
        final res = await movieUseCase.request();
        emit(TrendingMovieState.loaded(res));
      } catch (e) {
        emit(TrendingMovieState.error(e.toString()));
      }
    });
  }
}
