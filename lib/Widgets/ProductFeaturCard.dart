import 'package:flutter/material.dart';

class ProductFeaturCard extends StatelessWidget {
  const ProductFeaturCard({
    Key? key,
    required this.name,
    required this.iconimg,
  }) : super(key: key);
  final String name;

  final String iconimg;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(height: 40, width: 40, child: Image.network(iconimg)),
        SizedBox(
          height: 3,
        ),
        Text(
          name,
          style: TextStyle(
              fontSize: 14, fontWeight: FontWeight.w500, color: Colors.black54),
        )
      ],
    );
  }
}
