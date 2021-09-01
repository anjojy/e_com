import 'package:flutter/material.dart';

//Ad Banners in Home Page
Container AdBaner(Size screenSize, String banner1) {
  return Container(
    height: screenSize.height * 0.30,
    width: screenSize.width,
    color: Colors.transparent,
    child: Image.network(
      banner1,
      fit: BoxFit.fill,
    ),
  );
}

Container AdBaner2(Size screenSize, String banner2) {
  return Container(
    height: screenSize.height * 0.30,
    width: screenSize.width,
    color: Colors.grey[100],
    child: Image.network(
      banner2,
      fit: BoxFit.fill,
    ),
  );
}
