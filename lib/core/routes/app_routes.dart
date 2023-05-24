import 'package:auto_route/auto_route.dart';
import '../../modules/auth/presentation/login/login_page.dart';
import '../../modules/auth/presentation/signup/singup_page.dart';
import '../../modules/main_page.dart';
import '../../modules/onboard/presentation/onboading_page.dart';
import '../../modules/splash/splash_page.dart';
import '../../modules/unknow/unknow_page.dart';
import '../constants/app_routes.dart';
import 'guard/guard.dart';

part 'app_routes.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          path: AppRoutes.splashRoute,
          page: SplashRoute.page,
          initial: true,
        ),
        AutoRoute(
          path: AppRoutes.onboardingRoute,
          page: OnboardingRoute.page,
        ),
        AutoRoute(
          path: AppRoutes.routeHome,
          page: MainRoute.page,
          guards: [AuthGuard()],
        ),
        AutoRoute(
          path: AppRoutes.routeLogin,
          page: LoginRoute.page,
        ),
        AutoRoute(
          page: UnknownRoute.page,
          path: '*',
        ),
      ];
}
