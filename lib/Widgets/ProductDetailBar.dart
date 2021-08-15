import 'package:flutter/material.dart';

Container ProductDetailBar(Size screenSize) {
  return Container(
    margin: EdgeInsets.only(
      left: 5,
      right: 5,
      bottom: 10,
    ),
    padding: EdgeInsets.all(10),
    height: screenSize.height * 0.16,
    color: Colors.white,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'About Product',
          style: TextStyle(
              color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
        ),
        Expanded(child: SizedBox()),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'View details...',
              style: TextStyle(
                  color: Colors.red, fontSize: 18, fontWeight: FontWeight.w500),
            ),
          ],
        ),
        Expanded(child: SizedBox()),
      ],
    ),
  );
}
