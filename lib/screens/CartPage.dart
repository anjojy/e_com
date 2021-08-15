import 'package:e_com/Styles/ConstText.dart';
import 'package:e_com/Styles/ConstTextStyle.dart';
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
                              StaticText.productDummyName,
                              softWrap: true,
                              style: ProductLabelStyle,
                            ),
                            Expanded(child: SizedBox()),
                            Row(
                              children: [
                                Text(StaticText.productDummyPrice,
                                    style: ProductPriceLabelStyle),
                                Expanded(child: SizedBox()),
                                Icon(Icons.delete_outline),
                                SizedBox(width: 30),
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
                            child: Image.network(StaticText.productDummyImage),
                          ),
                          SizedBox(height: 20),
                          CartCounter(),
                        ],
                      )
                    ],
                  ));
            }));
  }
}
