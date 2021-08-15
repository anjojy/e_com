import 'package:flutter/material.dart';

import 'ProductCard.dart';

class ProductHomeGrid extends StatelessWidget {
  const ProductHomeGrid({
    Key? key,
    required this.screenSize,
  }) : super(key: key);

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
      height: screenSize.height * 0.8,
      child: Column(
        children: <Widget>[
          Row(
            children: [
              SizedBox(
                width: 5,
              ),
              Text(
                'Mobile Phones',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              Expanded(child: SizedBox()),
              TextButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.red)),
                  onPressed: () {},
                  child: Text(
                    'VIEW ALL',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w700),
                  )),
              SizedBox(
                width: 5,
              ),
            ],
          ),
          Container(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ProductCard(screenSize: screenSize),
                    Container(
                      height: screenSize.height * 0.35,
                      width: 2,
                      color: Colors.grey[350],
                    ),
                    ProductCard(screenSize: screenSize),
                  ],
                ),
                Container(
                  height: 2,
                  width: screenSize.width * 0.90,
                  color: Colors.grey[350],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ProductCard(screenSize: screenSize),
                    Container(
                      height: screenSize.height * 0.35,
                      width: 2,
                      color: Colors.grey[350],
                    ),
                    ProductCard(screenSize: screenSize),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
