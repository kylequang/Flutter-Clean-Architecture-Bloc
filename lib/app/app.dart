import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_boilerplate_clean_architecture_bloc/core/routes/app_routes.dart';
import 'package:flutter_boilerplate_clean_architecture_bloc/modules/auth/data/repositories/login_repository_impl.dart';
import 'package:flutter_boilerplate_clean_architecture_bloc/modules/auth/domain/usecase/login_usecase.dart';
import 'package:flutter_boilerplate_clean_architecture_bloc/modules/auth/presentation/login/bloc/login_bloc_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../core/config/flavors_config.dart';
import '../core/data/local/storage/app_storage_manager.dart';
// import '../core/themes/app_theme_m3.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final _appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        //example
        BlocProvider(
          create: (context) =>
              LoginBlocBloc(loginUseCase: LoginUseCase(LoginRepositoryImpl())),
        ),
      ],
      child: MaterialApp.router(
        title: FlavorConfig.title,
        debugShowCheckedModeBanner: false,
        routerConfig: _appRouter.config(),
        locale: Locale(
            AppStorageManager().appStorageRepositoryImpl.getLanguageCode()),
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
      ),
    );
  }
}
