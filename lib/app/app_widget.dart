import 'package:MegaHackFive/app/theme/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: Modular.navigatorKey,
      debugShowCheckedModeBanner: false,
      title: 'Hackathon',
      theme: defaultTheme(),
      initialRoute: '/home',
      onGenerateRoute: Modular.generateRoute,
    );
  }
}
