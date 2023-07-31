import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_boilerplate_clean_architecture_bloc/app/app.dart';
import 'app/bloc/bloc_observer.dart';
import 'core/config/app_config.dart';
import 'core/config/flavors_config.dart';
import 'core/enums/flavors.dart';
import 'core/initializer/app_initializer.dart';

void runBuildFlavorApp(Flavor flavor) async {
  WidgetsFlutterBinding.ensureInitialized();
  FlavorConfig.appFlavor = flavor;
  Bloc.observer = MyBlocObserver();
  await AppInitializer(AppConfig.getInstance()).init();
  return runZonedGuarded(() async {
    runApp(MyApp());
  }, (error, stack) {
    if (kDebugMode) {
      print(stack);
      print(error);
    }
  });
}
