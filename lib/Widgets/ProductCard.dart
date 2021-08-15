import 'package:flutter/material.dart';

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
              SizedBox(
                height: 10,
              ),
              Image.network(
                'https://fdn2.gsmarena.com/vv/pics/apple/apple-iphone-12-r1.jpg',
                height: screenSize.height * 0.20,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Apple iphone 12 pro (pacific blue 128gb)",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: Colors.black54),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'OMR 90.000',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
              ),
            ],
          )),
    );
  }
}
