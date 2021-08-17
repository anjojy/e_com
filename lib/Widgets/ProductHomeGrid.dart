import 'package:e_com/Controller/HomePageController.dart';
import 'package:e_com/screens/ProductDetailPage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'ProductCard.dart';

class ProductHomeGrid extends StatelessWidget {
  final ProductController productController = Get.put(ProductController());
  ProductHomeGrid({
    Key? key,
    required this.screenSize,
    required this.title,
    required this.isVisible,
  }) : super(key: key);

  final Size screenSize;
  final String title;
  final bool isVisible;

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
                title,
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              Expanded(child: SizedBox()),
              isVisible
                  ? TextButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.red)),
                      onPressed: () {},
                      child: Text(
                        'VIEW ALL',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w700),
                      ))
                  : SizedBox(
                      width: 5,
                    ),
              SizedBox(
                width: 5,
                height: 50,
              ),
            ],
          ),
          Container(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ProductCard(
                      screenSize: screenSize,
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProductDetailPage())),
                    ),
                    Container(
                      height: screenSize.height * 0.35,
                      width: 2,
                      color: Colors.grey[350],
                    ),
                    ProductCard(
                      screenSize: screenSize,
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProductDetailPage())),
                    ),
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
                    ProductCard(
                      screenSize: screenSize,
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProductDetailPage())),
                    ),
                    Container(
                      height: screenSize.height * 0.35,
                      width: 2,
                      color: Colors.grey[350],
                    ),
                    ProductCard(
                      screenSize: screenSize,
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProductDetailPage())),
                    ),
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
