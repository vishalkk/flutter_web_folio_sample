import 'package:go_router/go_router.dart';
import 'package:vishal_web_folio/helpers/utils.dart';
import 'package:vishal_web_folio/splash/presentation/pages/splash_page.dart';

class AppRoutes{

  static final router = GoRouter(

    initialLocation: SplashPage.route,
    navigatorKey: Utils.mainNav,

    routes: [

      GoRoute( 
        parentNavigatorKey: Utils.mainNav,
        path: SplashPage.route,
        builder: (context, state) => const SplashPage(),
        ),
    ]
  );
}