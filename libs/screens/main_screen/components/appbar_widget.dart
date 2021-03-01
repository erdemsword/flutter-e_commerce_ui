import 'package:e_commerce_ui/components/custom_painter.dart';
import 'package:e_commerce_ui/size_config.dart';
import 'package:flutter/material.dart';


class CustomAppBarWidget extends StatelessWidget {
  const CustomAppBarWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(height: 140, child: CurvedShape()),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 60,
                  child: Padding(
                    padding: const EdgeInsets.only(top:10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: <Widget>[
                              Text("XXX Market", style:TextStyle(color: Color(0xFFffffff), fontSize: getProportionateScreenWidth(20.0), fontWeight: FontWeight.bold),
                              ),]
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  transform: Matrix4.translationValues(0.0, 60.0, 0.0),
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Container(
                      decoration:BoxDecoration(
                        color: Color(0xFFffffff),
                        borderRadius: BorderRadius.circular(26),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 4.0,
                              spreadRadius: 1.0,
                              color: Color(0x95E9EBF0))
                        ],
                      ),
                      child: Stack(
                        alignment: Alignment.centerRight,
                        children: <Widget>[
                          TextField(
                              decoration: InputDecoration(
                            filled: true,
                            fillColor: Color(0xFFffffff),
                            hintText: "Ürün ara...",
                            contentPadding: EdgeInsets.only(left: 26.0, bottom: 8.0, right: 50.0),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFFffffff), width: 0.5),
                              borderRadius: BorderRadius.circular(26),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFFffffff), width: 0.5),
                              borderRadius: BorderRadius.circular(26),
                            ),
                          )),
                          GestureDetector(
                            child: Padding(
                                padding: const EdgeInsets.only(right: 16.0),
                                child: Icon(
                                  Icons.search,
                                  color: Color(0xFF757575),
                                )),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
    );
  }
}
