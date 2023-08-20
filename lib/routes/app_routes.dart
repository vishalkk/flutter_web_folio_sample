import 'package:go_router/go_router.dart';
import 'package:vishal_web_folio/feature/shell/presentation/pages/protfolio_main_page.dart';
import 'package:vishal_web_folio/helpers/utils.dart';
import 'package:vishal_web_folio/feature/splash/presentation/pages/splash_page.dart';

import '../feature/welcome/presentation/pages/welcom_page.dart';

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


ShellRoute(
    navigatorKey: Utils.tabNav,
    builder: ((context, state, child) {
      
      return PortfolioMainPage(child: child);
       // pages get injected here
    }),
    routes: [
        // all nested routes go here!
    
          GoRoute(
        parentNavigatorKey: Utils.tabNav,
        path: WelcomePage.route,
        pageBuilder: (context, state) {
          return const NoTransitionPage(
              child: WelcomePage()
          );
        }
    ),

    
    ]
),

        //   //main pager
        //     GoRoute( 
        // parentNavigatorKey: Utils.mainNav,
        // path: PortfolioMainPage.route,
        // builder: (context, state) => const PortfolioMainPage(child: ,),
        // ),
    ]
  );
}