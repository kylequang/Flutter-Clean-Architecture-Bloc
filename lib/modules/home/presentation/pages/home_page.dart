import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_boilerplate_clean_architecture_bloc/core/di/di.dart';
import 'package:flutter_boilerplate_clean_architecture_bloc/modules/home/presentation/pages/trending_movie.dart';

import '../../../../core/widgets/linear_background.dart';
import '../../domain/usecase/movie.usecase.dart';
import '../bloc/trending_movie/trending_movie_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ScrollController scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<TrendingMovieBloc>(
          create: (context) => TrendingMovieBloc(getIt<MovieUseCase>())
            ..add(const TrendingMovieEvent.started()),
        ),
      ],
      child: Scaffold(
        extendBodyBehindAppBar: true,
        extendBody: true,
        body: SafeArea(
          bottom: false,
          child: LinearGradientBackground(
            child: SingleChildScrollView(
              controller: scrollController,
              physics: const BouncingScrollPhysics(),
              child: const Column(
                children: [
                  SizedBox(
                    height: 400,
                    child: TrendingMovieScreen(),
                  ),
                  // Container(
                  //   height: 100,
                  //   color: Colors.amber,
                  //   child: Column(
                  //     children: [
                  //       Text(
                  //         "First lunch app:${AppStorageManager().appStorageRepositoryImpl.getIsFirstLaunchApp()}",
                  //         style: const TextStyle(fontSize: 40),
                  //       ),
                  //       Text(
                  //         "Token:${AppStorageManager().appStorageRepositoryImpl.getDeviceToken()}",
                  //         style: const TextStyle(fontSize: 40),
                  //       ),
                  //     ],
                  //   ),
                  // )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
