import 'package:flutter/material.dart';

class ProductFeaturCard extends StatelessWidget {
  const ProductFeaturCard({
    Key? key,
    required this.name,
    required this.icon,
  }) : super(key: key);
  final String name;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: Colors.black54,
          size: 45,
        ),
        Text(
          name,
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
        )
      ],
    );
  }
}
