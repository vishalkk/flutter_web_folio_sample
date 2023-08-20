import 'package:go_router/go_router.dart';
import 'package:vishal_web_folio/feature/shell/presentation/pages/protfolio_main_page.dart';
import 'package:vishal_web_folio/helpers/utils.dart';
import 'package:vishal_web_folio/feature/splash/presentation/pages/splash_page.dart';

class AppRoutes{

  static final router = GoRouter(

    initialLocation: SplashPage.route,
    navigatorKey: Utils.mainNav,

    routes: [
      //splash pager
      GoRoute( 
        parentNavigatorKey: Utils.mainNav,
        path: SplashPage.route,
        builder: (context, state) => const SplashPage(),
        ),


          //main pager
            GoRoute( 
        parentNavigatorKey: Utils.mainNav,
        path: PortfolioMainPage.route,
        builder: (context, state) => const PortfolioMainPage(),
        ),
    ]
  );
}