import 'package:e_com/componets/AddCartButton.dart';
import 'package:e_com/componets/CarouselIndicator.dart';
import 'package:e_com/componets/CarouselViews.dart';
import 'package:e_com/componets/ProductDetailBar.dart';
import 'package:e_com/componets/ProductDetailTop.dart';
import 'package:e_com/componets/ProductHomeGrid.dart';
import 'package:e_com/styles/ConstText.dart';
import 'package:flutter/material.dart';

class ProductDetailPage extends StatefulWidget {
  const ProductDetailPage({key}) : super(key: key);

  @override
  _ProductDetailPageState createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  int _selectedItem = 0;
  int _currentImage = 0;
  PageController _controller = PageController();

  List<Widget> _pages = [
    CarouselImage(
        image:
            "https://fdn2.gsmarena.com/vv/pics/apple/apple-iphone-12-r1.jpg"),
    CarouselImage(
        image:
            "https://fdn2.gsmarena.com/vv/pics/apple/apple-iphone-12-r1.jpg"),
    CarouselImage(
        image:
            "https://fdn2.gsmarena.com/vv/pics/apple/apple-iphone-12-r1.jpg"),
  ];

  _onchanged(int index) {
    setState(() {
      _currentImage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(actions: [
          Icon(Icons.search_outlined, size: 25),
          SizedBox(width: 10),
          Icon(Icons.shopping_cart_outlined, size: 25),
          SizedBox(width: 10),
        ]),
        body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        color: Colors.white,
                        child: Column(
                          children: [
                            SizedBox(height: 10),
                            Container(
                                height: screenSize.height * 0.5,
                                child: PageView.builder(
                                    scrollDirection: Axis.horizontal,
                                    onPageChanged: _onchanged,
                                    controller: _controller,
                                    itemCount: _pages.length,
                                    itemBuilder: (context, int index) {
                                      return _pages[index];
                                    })),
                            SizedBox(height: 10),
                            CarouselIndicator(
                                pages: _pages, currentImage: _currentImage),
                            SizedBox(height: 10),
                          ],
                        ),
                      ),
                      ProductDetailTop(screenSize: screenSize),
                      ProductDetailBar(screenSize),
                      ProductHomeGrid(
                        screenSize: screenSize,
                        isVisible: false,
                        title: StaticText.similarProducts,
                      ),
                    ],
                  ),
                ),
              ),
              AddCartButton()
            ]));
  }
}
