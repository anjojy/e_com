import 'package:e_com/componets/ProductCard.dart';
import 'package:e_com/models/HomePageModel.dart';
import 'package:e_com/styles/ConstText.dart';
import 'package:flutter/material.dart';
import 'ProductDetailPage.dart';

class HomeSamGrid extends StatelessWidget {
  const HomeSamGrid({
    key,
    this.screenSize,
    this.title,
    this.isVisible,
    this.products,
  }) : super(key: key);

  final Size screenSize;
  final String title;
  final bool isVisible;
  final List<Item> products;

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
                      price: products[0].price.toString(),
                      image: StaticText.baseURL + products[0].image,
                      name: products[0].name,
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
                      price: products[1].price.toString(),
                      image: StaticText.baseURL + products[1].image,
                      name: products[1].name,
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
                      price: products[2].price.toString(),
                      image: StaticText.baseURL + products[2].image,
                      name: products[2].name,
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
                      price: products[3].price.toString(),
                      image: StaticText.productDummyImage,
                      name: products[3].name,
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
