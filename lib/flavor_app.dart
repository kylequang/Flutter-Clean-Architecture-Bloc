import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_boilerplate_clean_architecture_bloc/app/app.dart';

import 'app/bloc/bloc_observer.dart';
import 'core/config/app_config.dart';
import 'core/initializer/app_initializer.dart';
import 'flavors.dart';

void main() async {
  F.appFlavor = Flavor.values.firstWhere(
    (element) => element.name == appFlavor,
  );
  WidgetsFlutterBinding.ensureInitialized();
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
