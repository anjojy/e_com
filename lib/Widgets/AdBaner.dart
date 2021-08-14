import 'package:flutter/material.dart';

Container AdBaner(Size screenSize) {
  return Container(
    height: screenSize.height * 0.25,
    width: screenSize.width,
    color: Colors.grey[100],
    child: Image.network(
      'https://www.cellcity.co.bw/sites/default/files/styles/main_image/public/2021-02/Iphone%2012%20website%20Banners%202020-2%20%282%29.jpg?itok=SM9AD0EV',
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
      'https://www.giveawaymonkey.com/wp-content/uploads/2020/11/sup_giveawaybanner_iphone12_gleam2.jpg',
      fit: BoxFit.fill,
    ),
  );
}
