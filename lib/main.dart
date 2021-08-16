import 'package:e_com/screens/HomePage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(OmanPhones());
}

class OmanPhones extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: HomePage(),
    );
  }
}
