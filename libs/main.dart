
import 'package:e_commerce_ui/screens/join_splash/splash_widget.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce_ui/routes.dart';
import 'package:e_commerce_ui/theme.dart';
import 'package:flutter/services.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
        DeviceOrientation.portraitUp,
        DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'E-Commerce-UI',
      theme: theme(),
      // home: SplashScreen(),
      // We use routeName so that we dont need to remember the name
      initialRoute: FirstSplashScreen.routeName,
      routes: routes,
    );
  }
}
