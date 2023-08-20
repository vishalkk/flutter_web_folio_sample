import 'package:flutter/material.dart';
import 'package:vishal_web_folio/splash/presentation/widgets/splash_loading.dart';
import 'package:vishal_web_folio/styles/colors.dart';

class SplashPage extends StatelessWidget {
static const String route ='/splash';

  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const  Scaffold(
      backgroundColor: AppColors.mainBlue,
      body: SplashLoading(message: 'Loading vishals profile'),
    );
  }
}