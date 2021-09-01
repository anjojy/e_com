import 'package:e_com/styles/ConstText.dart';
import 'package:flutter/material.dart';

import 'ProductFeaturCard.dart';

class ProductDetailTop extends StatelessWidget {
  const ProductDetailTop({
    key,
    this.screenSize,
  }) : super(key: key);

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        margin: EdgeInsets.symmetric(horizontal: 5, vertical: 20),
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              StaticText.productDummyName,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.black54),
            ),
            SizedBox(height: 10),
            Container(
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                width: screenSize.width * 0.17,
                padding: EdgeInsets.all(5),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Icon(
                    Icons.star,
                    color: Colors.white,
                    size: 14,
                  ),
                  Text(
                    '3.4',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  )
                ])),
            SizedBox(
              height: 10,
            ),
            RichText(
                text: TextSpan(children: const <TextSpan>[
              TextSpan(
                  text: 'OMR 90.000',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                      fontSize: 18)),
              TextSpan(text: '    '),
              TextSpan(
                  text: 'OMR 110.110',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                      decoration: TextDecoration.lineThrough)),
            ])),
            SizedBox(
              height: 10,
            ),
            Container(
                color: Colors.grey[200],
                height: screenSize.height * 0.33,
                child: Column(children: [
                  Container(
                      color: Colors.grey[300],
                      height: screenSize.height * 0.075,
                      child: Row(children: [
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          'color',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.black45),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          height: 30,
                          width: 30,
                          decoration: new BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: Image.network(
                              'http://omanphone.smsoman.com//pub//media//attribute//swatch////b//l//blue.png'),
                        )
                      ])),
                  Column(children: [
                    SizedBox(height: 20),
                    Row(children: [
                      SizedBox(width: 30),
                      ProductFeaturCard(
                        name: "128 GB",
                        iconimg:
                            'http:\/\/omanphone.smsoman.com\/pub\/media\/itoons\/Rom_Omanphone.png',
                        //icon: Icons.memory_outlined,
                      ),
                      Expanded(child: SizedBox()),
                      ProductFeaturCard(
                        name: "5000 mAh",
                        iconimg:
                            'http:\/\/omanphone.smsoman.com\/pub\/media\/itoons\/Battery_Omanphone.png',
                        //icon: Icons.battery_charging_full_outlined,
                      ),
                      Expanded(child: SizedBox()),
                      ProductFeaturCard(
                        name: "20 MP",
                        iconimg:
                            'http:\/\/omanphone.smsoman.com\/pub\/media\/itoons\/Shutter_Omanphone.png',
                        //icon: Icons.camera_outlined,
                      ),
                      SizedBox(width: 30)
                    ]),
                    SizedBox(height: 20),
                    Row(children: [
                      SizedBox(width: 30),
                      ProductFeaturCard(
                        name: "8 GB",
                        iconimg:
                            'http:\/\/omanphone.smsoman.com\/pub\/media\/itoons\/Ram_Omanphone.png',
                        //icon: Icons.storage_sharp,
                      ),
                      Expanded(child: SizedBox()),
                      ProductFeaturCard(
                        name: "6.1 ",
                        iconimg:
                            'http:\/\/omanphone.smsoman.com\/pub\/media\/itoons\/Screen_Omanphone.png',
                        //icon: Icons.mobile_friendly_outlined,
                      ),
                      Expanded(child: SizedBox()),
                      SizedBox(width: 80)
                    ])
                  ])
                ])),
          ],
        ));
  }
}
