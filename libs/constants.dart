import 'package:flutter/material.dart';
import 'package:e_commerce_ui/size_config.dart';

bool firstLogin = false;

const kPrimaryColor = Color(0xFFFF7643);
const kPrimaryLightColor = Color(0xFFFFECDF);
const kPrimaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0xFFFFA53E), Color(0xFFFF7643)],
);
const kSecondaryColor = Color(0xFF979797);
const kTextColor = Color(0xFF757575);

const kAnimationDuration = Duration(milliseconds: 200);

final headingStyle = TextStyle(
  fontSize: getProportionateScreenWidth(28),
  fontWeight: FontWeight.bold,
  color: Colors.black,
  height: 1.5,
);

// Form Error
final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "Lütfen e-posta adresinizi girin";
const String kInvalidEmailError = "Lütfen geçerli e-posta adresi girin";
const String kPassNullError = "Lütfen şifrenizi girin";
const String kShortPassError = "Şifre çok kısa";
const String kMatchPassError = "Şifre uyuşmuyor";
const String kNamelNullError = "Lütfen adınızı girin";
const String kPhoneNumberNullError = "Lütfen telefon adresinizi girin";
const String kAddressNullError = "Lütfen adresinizi girin";

final otpInputDecoration = InputDecoration(
  contentPadding:
      EdgeInsets.symmetric(vertical: getProportionateScreenWidth(15)),
  border: outlineInputBorder(),
  focusedBorder: outlineInputBorder(),
  enabledBorder: outlineInputBorder(),
);

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(getProportionateScreenWidth(15)),
    borderSide: BorderSide(color: kTextColor),
  );
}
