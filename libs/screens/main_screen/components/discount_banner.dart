import 'package:e_commerce_ui/screens/maps/map_screen.dart';
import 'package:flutter/material.dart';

import '../../../size_config.dart';

class DiscountBanner extends StatelessWidget {
  const DiscountBanner({
    Key key,
  }) : super(key: key);


  void displayBottomSheet(BuildContext context) {
    showModalBottomSheet(
        context: context,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(25.0)),
        ),
        builder: (ctx) {
          return Container(
            padding: EdgeInsets.all(16),
            height: MediaQuery.of(context).size.height  * 0.2,
            child: Center(
              child: Text("LOKASYON DEĞİŞTİRME"),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, MapTargetScreen.routeName),
      child: Container(
        // height: 90,
        width: double.infinity,
        margin: EdgeInsets.only(left:getProportionateScreenWidth(10),right:getProportionateScreenWidth(10)),
        padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(20),
          vertical: getProportionateScreenWidth(15),
        ),
        decoration: BoxDecoration(
          color: Color(0xFFff9800),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.location_on, color: Colors.white),
              Text("Sarıyer - Şen Bakkal", textAlign:TextAlign.center,style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: getProportionateScreenWidth(16.0)),)
            ],
          ),
      ),
    );
  }
}
