import 'package:e_com/Styles/ConstText.dart';
import 'package:flutter/material.dart';

//Ad Banners in Home Page
Container AdBaner(Size screenSize) {
  return Container(
    height: screenSize.height * 0.25,
    width: screenSize.width,
    color: Colors.grey[100],
    child: Image.network(
      StaticText.adBanner1,
      fit: BoxFit.fill,
    ),
  );
}

Container AdBaner2(Size screenSize) {
  return Container(
    height: screenSize.height * 0.25,
    width: screenSize.width,
    color: Colors.grey[100],
    child: Image.network(
      StaticText.adBanner2,
      fit: BoxFit.fill,
    ),
  );
}
