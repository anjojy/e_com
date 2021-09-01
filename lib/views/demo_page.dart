import 'package:e_com/componets/AdBaner.dart';
import 'package:e_com/componets/HomeAppBar.dart';
import 'package:e_com/componets/SearchBar.dart';
import 'package:e_com/controllers/product_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'demogrid.dart';

class demoPage extends StatefulWidget {
  demoPage({
    key,
  }) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<demoPage> {
  final ProductController productController = Get.put(ProductController());
  int _selectedIndex = 0;
  String title = "Mobile Phone";
  bool isVisible = true;
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: HomeAppBar(),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search_outlined),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category_outlined),
            label: 'Category',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: 'Cart',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
        showSelectedLabels: true,
        showUnselectedLabels: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SearchBar(screenSize),
            Expanded(
              child: Obx(
                () {
                  if (productController.isLoading.value)
                    return Center(child: CircularProgressIndicator());
                  else
                    return SingleChildScrollView(
                      child: Column(
                        children: <Widget>[
                          AdBaner(
                              screenSize,
                              productController
                                  .homeBanner.data.slider[0].image),
                          HomeSamGrid(
                            screenSize: screenSize,
                            title: title,
                            isVisible: isVisible,
                            products:
                                productController.productList[0].data.items,
                            key: null,
                          ),
                          AdBaner2(
                              screenSize,
                              productController
                                  .homeBanner.data.slider[1].image),
                          HomeSamGrid(
                            screenSize: screenSize,
                            title: title,
                            isVisible: isVisible,
                            products:
                                productController.productList[1].data.items,
                            key: null,
                          ),
                        ],
                      ),
                    );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
