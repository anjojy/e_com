import 'package:e_com/Widgets/HomeAppBar.dart';
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
      appBar: HomeAppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SearchBar(screenSize),
            SingleChildScrollView(),
            Container(
              height: screenSize.height * 0.25,
              width: screenSize.width,
              color: Colors.grey[100],
              child: Image.network(
                'https://www.cellcity.co.bw/sites/default/files/styles/main_image/public/2021-02/Iphone%2012%20website%20Banners%202020-2%20%282%29.jpg?itok=SM9AD0EV',
                fit: BoxFit.fill,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
