import 'package:e_com/controllers/product_controller.dart';
import 'package:e_com/styles/ConstText.dart';
import 'package:e_com/views/ProductDetailPage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'ProductCard.dart';

class ProductHomeGrid extends StatelessWidget {
  ProductHomeGrid({
    key,
    this.screenSize,
    this.title,
    this.isVisible,
  }) : super(key: key);

  final Size screenSize;
  final String title;
  final bool isVisible;
  final ProductController productController = Get.put(ProductController());

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
                      price: productController
                          .productList[0].data.items[0].price
                          .toString(),
                      image: StaticText.baseURL +
                          productController.productList[0].data.items[0].image,
                      name: productController.productList[0].data.items[0].name,
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
                      price: productController
                          .productList[0].data.items[1].price
                          .toString(),
                      image: StaticText.baseURL +
                          productController.productList[0].data.items[1].image,
                      name: productController.productList[0].data.items[1].name,
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
                      image: StaticText.baseURL +
                          productController.productList[0].data.items[2].image,
                      price: productController
                          .productList[0].data.items[2].price
                          .toString(),
                      name: productController.productList[0].data.items[2].name,
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
                      price: productController
                          .productList[0].data.items[3].price
                          .toString(),
                      image: StaticText.productDummyImage,
                      name: productController.productList[0].data.items[3].name,
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
