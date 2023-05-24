import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_boilerplate_clean_architecture_bloc/core/data/local/storage/app_storage_manager.dart';
import 'package:flutter_boilerplate_clean_architecture_bloc/core/routes/app_routes.dart';

@RoutePage()
class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      if (AppStorageManager().appStorageRepositoryImpl.getIsFirstLaunchApp()) {
        AutoRouter.of(context).replace(const OnboardingRoute());
      } else {
        AutoRouter.of(context).replace(const MainRoute());
      }
    });
    return const Scaffold(
      body: Center(
          child: Text(
        "Splash Page",
        style: TextStyle(color: Colors.black),
      )),
    );
  }
}
