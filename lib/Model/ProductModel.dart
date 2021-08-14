import 'package:flutter/material.dart';

class ProductDetails {
  final String image, name, storage;
  final int price, id;
  final double starrateing;
  final Color color;
  ProductDetails({
    required this.name,
    required this.storage,
    required this.starrateing,
    required this.id,
    required this.image,
    required this.price,
    required this.color,
  });
}

List<ProductDetails> productsList = [
  ProductDetails(
      id: 1,
      name: "",
      storage: "",
      starrateing: 3.4,
      price: 234,
      image: "https://fdn2.gsmarena.com/vv/pics/apple/apple-iphone-12-r1.jpg",
      color: Color(0xFF3D82AE)),
  ProductDetails(
      id: 2,
      name: "",
      storage: "",
      starrateing: 4.5,
      price: 234,
      image:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQxii4hFxrcl9KLc1BUEDkFwCH-DlHJaXPZtgqY46r8nYe93afMr5v138-FXzOY-th-R6s&usqp=CAU",
      color: Color(0xFFD3A984)),
  ProductDetails(
      id: 3,
      name: "",
      storage: "",
      starrateing: 4.7,
      price: 234,
      image:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQatgvuIrFt7jngmCfH9P-ytS7j5vRvHcflxFqm2CjFPc8nTEQ9MAOYaIHRMiINze0ny-Q&usqp=CAU",
      color: Color(0xFF989493)),
  ProductDetails(
      id: 4,
      name: "",
      storage: "",
      starrateing: 3.2,
      price: 234,
      image:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR9P555k0MQQnU1URcP2OFr5ne89nG2JLY0Jx81_52wlVXVn-96RCjQ0xl4tMQD4p9Smqg&usqp=CAU",
      color: Color(0xFFE6B398)),
];
