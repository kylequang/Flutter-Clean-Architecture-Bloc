import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/widgets/card_film_item.dart';
import '../bloc/trending_movie/trending_movie_bloc.dart';

class TrendingMovieScreen extends StatelessWidget {
  const TrendingMovieScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TrendingMovieBloc, TrendingMovieState>(
      builder: (context, state) {
        return state.maybeMap(
          loaded: (value) {
            final list = value.movies;
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 20, left: 8),
                  child: Text(
                    "Trending movies",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Roboto',
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Expanded(
                  child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    itemCount: list.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return CartFilmItem(
                          titleFilm: list[index].title,
                          pathImage: list[index].posterPath,
                          onPressed: () {});
                    },
                  ),
                ),
              ],
            );
          },
          initial: (_) => const Center(child: CircularProgressIndicator()),
          error: (value) {
            return Text(value.message);
          },
          orElse: () => Container(
            height: 100,
            color: Colors.amberAccent,
          ),
        );
      },
    );
  }
}
