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
          backgroundColor: Colors.red,
          onSurface: Colors.grey,
        ),
        onPressed: () {
          print('Pressed');
        },
      ),
    );
  }
}
