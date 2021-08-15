import 'package:e_com/screens/CartPage.dart';
import 'package:flutter/material.dart';

class AddCartButton extends StatelessWidget {
  const AddCartButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.maxFinite,
      child: TextButton(
        child: Text('ADD TO CART'),
        style: TextButton.styleFrom(
          primary: Colors.white,
          shape: const BeveledRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(0))),
          backgroundColor: Colors.red,
          onSurface: Colors.grey,
        ),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => CartPage()));
        },
      ),
    );
  }
}
