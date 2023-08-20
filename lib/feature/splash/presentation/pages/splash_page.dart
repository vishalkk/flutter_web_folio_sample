import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:vishal_web_folio/feature/splash/presentation/widgets/splash_loading.dart';
import 'package:vishal_web_folio/feature/welcome/presentation/pages/welcom_page.dart';
import 'package:vishal_web_folio/helpers/utils.dart';
import 'package:vishal_web_folio/styles/colors.dart';

class SplashPage extends StatelessWidget {
static const String route ='/splash';

  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
      Future.delayed(const Duration(seconds: 5), () {
        
        //navigate to main page 
        GoRouter.of(Utils.mainNav.currentContext!).go(WelcomePage.route);
      }); 
      return const  Scaffold(
      backgroundColor: AppColors.mainBlue,
      body: SplashLoading(message: 'Loading vishals profile'),
    );
  }
}