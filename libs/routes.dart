import 'package:e_commerce_ui/screens/forgot_password/forgot_password_screen.dart';
import 'package:flutter/widgets.dart';
import 'package:e_commerce_ui/screens/maps/map_screen.dart';
import 'package:e_commerce_ui/screens/sign_in/sign_in/sign_in_screen.dart';
import 'package:e_commerce_ui/screens/sign_in/sign_up/sign_up_screen.dart';
import 'package:e_commerce_ui/screens/join_splash/splash_widget.dart';
import 'package:e_commerce_ui/screens/splash_screen/splash_screen.dart';
import 'package:e_commerce_ui/screens/main_screen/components/main.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  FirstSplashScreen.routeName: (context) => FirstSplashScreen(),
  SplashScreen.routeName: (context) => SplashScreen(),
  MapTargetScreen.routeName: (context) => MapTargetScreen(),
  MainScreen.routeName: (context) => MainScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
};
