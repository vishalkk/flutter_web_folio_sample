import 'package:flutter/material.dart';
import 'package:vishal_web_folio/splash/presentation/pages/splash_page.dart';

void main(){

  runApp(const PortfolioApp());
}

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portfolio App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Product Sans',
      ),
      home: const SplashPage()
    );
  }
}