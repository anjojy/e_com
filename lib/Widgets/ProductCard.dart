import 'package:e_com/Styles/ConstText.dart';
import 'package:e_com/Styles/ConstTextStyle.dart';
import 'package:flutter/material.dart';

//Product List Grid Card Item View
class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    required this.screenSize,
    required this.onTap,
  }) : super(key: key);

  final Size screenSize;
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
              Image.network(
                StaticText.productDummyImage,
                height: screenSize.height * 0.20,
              ),
              SizedBox(height: 10),
              Text(
                StaticText.productDummyName,
                textAlign: TextAlign.center,
                style: ProductCardNameStyle,
              ),
              SizedBox(height: 10),
              Text(
                StaticText.productDummyPrice,
                style: ProductCardPriceStyle,
              ),
            ],
          )),
    );
  }
}
