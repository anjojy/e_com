import 'package:e_com/styles/ConstTextStyle.dart';
import 'package:flutter/material.dart';

//Product List Grid Card Item View
class ProductCard extends StatelessWidget {
  const ProductCard({
    key,
    this.screenSize,
    this.price,
    this.name,
    this.image,
    this.onTap,
  }) : super(key: key);

  final Size screenSize;
  final String name;
  final String image;
  final String price;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {onTap()},
      child: Container(
          height: screenSize.height * 0.35,
          width: screenSize.width * 0.45,
          child: Column(
            children: [
              SizedBox(height: 10),
              Container(
                height: screenSize.height * 0.2,
                child: Image.network(
                  image,
                  height: screenSize.height * 0.20,
                ),
              ),
              SizedBox(height: 10),
              Text(
                name,
                textAlign: TextAlign.center,
                style: ProductCardNameStyle,
              ),
              Expanded(child: SizedBox()),
              Text(
                "OMR $price",
                style: ProductCardPriceStyle,
              ),
              SizedBox(height: 10),
            ],
          )),
    );
  }
}
