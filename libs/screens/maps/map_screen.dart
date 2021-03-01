import 'package:flutter/material.dart';
import 'package:e_commerce_ui/screens/maps/components/body.dart';


class MapTargetScreen extends StatelessWidget {
  static String routeName = "/maps";
  @override
  Widget build(BuildContext context) {
    // You have to call it on your starting screen
    return Scaffold(
      body: Body(),
    );
  }
}
