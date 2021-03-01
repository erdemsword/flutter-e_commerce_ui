import 'package:flutter/material.dart';
import 'package:e_commerce_ui/constants.dart';
import 'package:e_commerce_ui/size_config.dart';

import 'sign_up_form.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: SizeConfig.screenHeight * 0.04), // 4%
                Text("Üyelik oluştur", style: headingStyle),
                Text(
                  "Bilgilerinizi girin ve üyeliğinizi oluşturun",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                SignUpForm(),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  ],
                ),
                //SizedBox(height: getProportionateScreenHeight(20)),
                Text(
                  'Devam ederek şart ve koşullarımızı kabul ettiğinizi onaylayın',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.caption,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
