
import 'package:e_commerce_ui/screens/sign_in/sign_in/sign_in_screen.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce_ui/constants.dart';
import 'package:e_commerce_ui/size_config.dart';

// This is the best practice
import '../components/splash_content.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {
      "text": "Neque porro quisquam est qui dolorem\n ipsum quia dolor sit amet, consectetur, adipisci velit.",
      "image": "assets/images/splash_1.svg"
    },
    {
      "text":
          "Neque porro quisquam est qui dolorem\n ipsum quia dolor sit amet, consectetur, adipisci velit.",
      "image": "assets/images/splash_2.svg"
    },
    {
      "text": "Neque porro quisquam est qui dolorem\n ipsum quia dolor sit amet, consectetur, adipisci velit.",
      "image": "assets/images/splash_3.svg"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 5,
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: splashData.length,
                itemBuilder: (context, index) => SplashContent(
                  image: splashData[index]["image"],
                  text: splashData[index]['text'],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(20)),
                child: Column(
                  children: <Widget>[
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        splashData.length,
                        (index) => buildDot(index: index),
                      ),
                    ),
                    Spacer(flex: 3),
                    RaisedButton(
                      textColor: Colors.white,
                      padding: EdgeInsets.all(0.0),
                      shape: StadiumBorder(),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25.0),
                          gradient: LinearGradient(
                            colors: <Color>[
                              Color(0xFF00b09b),
                              Color(0xFF96c93d),
                            ],
                          ),
                        ),
                        child: Text(
                          'Atla',
                          style: TextStyle(fontSize: getProportionateScreenWidth(15.0)),
                        ),
                        padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(70.0), vertical: getProportionateScreenHeight(15.0)),
                      ),
                      onPressed: () {
                          Navigator.of(context).pop(false);
                          Navigator.pushNamed(context, SignInScreen.routeName);
                      },
                    ),
                    Spacer(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot({int index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? kPrimaryColor : Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
