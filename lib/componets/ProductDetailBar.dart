import 'package:e_com/styles/ConstText.dart';
import 'package:e_com/styles/ConstTextStyle.dart';
import 'package:flutter/material.dart';

//Product basic detail view in Product detail Page
Container ProductDetailBar(Size screenSize) {
  return Container(
    margin: EdgeInsets.only(left: 5, right: 5, bottom: 10),
    padding: EdgeInsets.all(10),
    height: screenSize.height * 0.16,
    color: Colors.white,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(StaticText.aboutProductLabel, style: aboutProductStyle),
        Expanded(child: SizedBox()),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(StaticText.viewDetailsLabel, style: viewDetailsProductStyle),
          ],
        ),
        Expanded(child: SizedBox()),
      ],
    ),
  );
}
