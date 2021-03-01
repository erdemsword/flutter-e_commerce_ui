import 'package:e_commerce_ui/components/custom_bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import '../../../enums.dart';
import '../../../size_config.dart';
import 'body.dart';

class MainScreen extends StatelessWidget {
  static String routeName = "/login_success";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home),
    );
  }
}
