import 'package:flutter/material.dart';
import 'package:vishal_web_folio/helpers/utils.dart';

class PortfolioMainPage extends StatelessWidget {
    static const String route = '/main';
final Widget child;
  const PortfolioMainPage({super.key,required this.child});

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      key: Utils.mainScaffold,
      body: Center(
        child: child,
      )
     );
  }
}