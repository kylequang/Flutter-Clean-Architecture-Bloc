import 'package:auto_route/auto_route.dart';
import 'package:flutter_boilerplate_clean_architecture_bloc/core/data/local/storage/app_storage_manager.dart';
import 'package:flutter_boilerplate_clean_architecture_bloc/core/routes/app_routes.dart';

class AuthGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    if (checkAuthenticationStatus()) {
      resolver.next();
    } else {
      router.replaceAll([
        const LoginRoute(),
      ]);
    }
  }

  bool checkAuthenticationStatus() {
    // Add your authentication logic here
    // For example, check if the user is logged in
    // Return true if authenticated, false otherwise

    //my example
    return AppStorageManager().appStorageRepositoryImpl.getDeviceToken() !=
        null;
  }
}
