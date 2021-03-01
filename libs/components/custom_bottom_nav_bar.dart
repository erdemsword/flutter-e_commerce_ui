import 'package:e_commerce_ui/screens/main_screen/components/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constants.dart';
import '../enums.dart';
import '../size_config.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    Key key,
    @required this.selectedMenu,
  }) : super(key: key);

  final MenuState selectedMenu;

  @override
  Widget build(BuildContext context) {
    final Color inActiveIconColor = Color(0xFFB6B6B6);
    return Container(
      padding: EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -15),
            blurRadius: 20,
            color: Color(0xFFDADADA).withOpacity(0.15),
          ),
        ],
      ),
      child: SafeArea(
          top: false,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: SvgPicture.asset(
                  "assets/icons/home.svg",
                  width: getProportionateScreenWidth(24),
                  height: getProportionateScreenHeight(24),
                  color: MenuState.home == selectedMenu
                      ? kPrimaryColor
                      : inActiveIconColor,
                ),
                onPressed: () =>
                    Navigator.pushNamed(context, MainScreen.routeName),
              ),
              IconButton(
                icon: SvgPicture.asset("assets/icons/list.svg",
                width: getProportionateScreenWidth(24),
                height: getProportionateScreenHeight(24),
                color: MenuState.category == selectedMenu
                      ? kPrimaryColor
                      : inActiveIconColor,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: SvgPicture.asset("assets/icons/shopping-cart.svg",
                width: getProportionateScreenWidth(24),
                height: getProportionateScreenHeight(24),
                color: MenuState.cart == selectedMenu
                      ? kPrimaryColor
                      : inActiveIconColor,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: SvgPicture.asset(
                  "assets/icons/heart.svg",
                  width: getProportionateScreenWidth(24),
                  height: getProportionateScreenHeight(24),
                  color: MenuState.favourites == selectedMenu
                      ? kPrimaryColor
                      : inActiveIconColor,
                ),
                onPressed: () {}
              ),
              IconButton(
                icon: SvgPicture.asset(
                  "assets/icons/user.svg",
                  width: getProportionateScreenWidth(24),
                  height: getProportionateScreenHeight(24),
                  color: MenuState.profile == selectedMenu
                      ? kPrimaryColor
                      : inActiveIconColor,
                ),
                onPressed: () {}
              ),
            ],
          )),
    );
  }
}
