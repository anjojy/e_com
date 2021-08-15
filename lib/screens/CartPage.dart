import 'package:e_com/Widgets/CartCounter.dart';
import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(),
        body: ListView.builder(
            padding: const EdgeInsets.all(8),
            itemCount: 2,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.symmetric(vertical: 10),
                  height: screenSize.height * 0.23,
                  color: Colors.white,
                  child: Row(
                    children: [
                      Container(
                        width: screenSize.width * 0.65,
                        child: Column(
                          children: [
                            Text(
                              "Apple iphone 12 pro (pacific blue 128gb)",
                              softWrap: true,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  color: Colors.black54),
                            ),
                            Expanded(child: SizedBox()),
                            Row(
                              children: [
                                Text('OMR 90.000',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.red,
                                        fontSize: 18)),
                                Expanded(child: SizedBox()),
                                Icon(Icons.delete_outline),
                                SizedBox(
                                  width: 30,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: screenSize.height * 0.14,
                            child: Image.network(
                                'https://fdn2.gsmarena.com/vv/pics/apple/apple-iphone-12-r1.jpg'),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          CartCounter(),
                        ],
                      )
                    ],
                  ));
            }));
  }
}
