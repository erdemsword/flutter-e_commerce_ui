import 'package:flutter/material.dart';
//import 'package:flutter_svg/flutter_svg.dart';
import 'package:e_commerce_ui/models/card_widget_model.dart';
import '../../../size_config.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getProportionateScreenHeight(200),
      child: ListView.builder(
          padding: EdgeInsets.only(right: 20),
          scrollDirection: Axis.horizontal,
          itemCount: cards == null ? 0 : cards.length,
          itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
               print(cards[index].markaIsim.toString());
            },
        child: Container(
            height: getProportionateScreenHeight(200),
            width: getProportionateScreenWidth(300),
            margin: EdgeInsets.only(
                        left: 10,
                      ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                      blurRadius: 4.0,
                      spreadRadius: 1.0,
                      color: Color(0x95E9EBF0))
                ],
                gradient: LinearGradient(
                  colors: [
                    cards[index].baslangicRenk,
                    cards[index].bitisRenk
                  ],
                )),
            child: Stack(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(10),
                  height: getProportionateScreenHeight(200),
                  width: getProportionateScreenWidth(300),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: LinearGradient(
                          colors: [cards[index].baslangicRenk, cards[index].bitisRenk],
                          begin: Alignment.topLeft,
                          end: Alignment.topRight)),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Center(
                        child: Image.asset(cards[index].resim,
                        height: getProportionateScreenHeight(128),
                        width: getProportionateScreenWidth(128)),
                      ),
                      Text(
                        cards[index].markaIsim,
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ],
            )),
      );
          }),
    );
  }
}
