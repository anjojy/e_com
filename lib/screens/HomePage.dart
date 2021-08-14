import 'package:e_com/Widgets/AdBaner.dart';
import 'package:e_com/Widgets/HomeAppBar.dart';
import 'package:e_com/Widgets/ProductHomeGrid.dart';
import 'package:e_com/Widgets/SearchBar.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: HomeAppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SearchBar(screenSize),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    AdBaner(screenSize),
                    ProductHomeGrid(screenSize: screenSize),
                    AdBaner2(screenSize),
                    ProductHomeGrid(screenSize: screenSize),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
