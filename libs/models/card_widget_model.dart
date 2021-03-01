import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardItemsModel {
  String resim;
  String markaIsim;
  Color baslangicRenk;
  Color bitisRenk;
  Color renk;
  CardItemsModel(
      {this.resim,
      this.markaIsim,
      this.baslangicRenk,
      this.bitisRenk,});
}

List<CardItemsModel> cards = [
  CardItemsModel(
    resim: 'assets/images/hacisakir.png',
    markaIsim: 'Katı sabun çeşitlerinde %30 İNDİRİM!',
    baslangicRenk: Color(0xFF2889EB),
    bitisRenk: Color(0xFF0B56CB),
  ),
  CardItemsModel(
    resim: 'assets/images/ulker.png',
    markaIsim: 'Ülker bisküvi çeşitlerinde 3 AL 2 ÖDE!',
    baslangicRenk: Color(0xFFF1AD4B),
    bitisRenk: Color(0xFFF26340),
  ),
  CardItemsModel(
    resim: 'assets/images/feast.png',
    markaIsim: 'Feast donuk ürünlerinde %20 İNDİRİM!',
    baslangicRenk: Color(0xFF7EA56C),
    bitisRenk: Color(0xFF6C9258),
  )
];
