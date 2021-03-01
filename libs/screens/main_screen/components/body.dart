import 'package:e_commerce_ui/screens/main_screen/components/appbar_widget.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce_ui/screens/main_screen/components/discount_banner.dart';
import 'package:e_commerce_ui/screens/main_screen/components/card_widget.dart';
import '../../../size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            CustomAppBarWidget(),
            Center(child: Text("Alttaki butona basarak size en yakın market konumunu seçebilirsiniz.",textAlign: TextAlign.center,style: TextStyle(fontSize: 12.0, color: Colors.black26),)),
            SizedBox(height:getProportionateScreenHeight(10.0)),
            DiscountBanner(),
            SizedBox(height:getProportionateScreenHeight(10.0)),
            Padding(
              padding: const EdgeInsets.only(left:15.0,right:15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("KAMPANYALAR",textAlign: TextAlign.left,style: TextStyle(fontSize: 16.0, color: Colors.black38, fontWeight: FontWeight.bold),),
                ],
              ),
            ),
            SizedBox(height:getProportionateScreenHeight(10.0)),
            ItemCard(),
          ],
        ),
      ),
    );
  }
}
