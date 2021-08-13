import 'package:e_com/screens/HomePage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(OmanPhones());
}

class OmanPhones extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'OMAN PHONE',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(title: 'OMAN PHONE'),
    );
  }
}
