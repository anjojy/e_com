import 'package:e_com/Widgets/CarouselViews.dart';
import 'package:e_com/Widgets/ProductFeaturCard.dart';
import 'package:flutter/material.dart';

class ProductDetailPage extends StatefulWidget {
  const ProductDetailPage({Key? key}) : super(key: key);

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
        backgroundColor: Colors.white,
        appBar: AppBar(),
        body: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(
              height: 10,
            ),
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
            SizedBox(
              height: 10,
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List<Widget>.generate(_pages.length, (int index) {
                  return AnimatedContainer(
                      duration: Duration(milliseconds: 300),
                      height: 8,
                      width: 8,
                      margin: EdgeInsets.symmetric(horizontal: 5, vertical: 0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: (index == _currentImage)
                              ? Colors.red
                              : Colors.grey.withOpacity(0.5)));
                })),
            SizedBox(
              height: 20,
            ),
            Text(
              "Apple iphone 12 pro (pacific blue 128gb)",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.black54),
            ),
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
            Container(
                color: Colors.grey[200],
                height: screenSize.height * 0.35,
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
                            height: 20,
                            width: 20,
                            decoration: new BoxDecoration(
                              color: Colors.black,
                              shape: BoxShape.circle,
                            ))
                      ])),
                  Column(children: [
                    SizedBox(height: 20),
                    Row(children: [
                      SizedBox(width: 30),
                      ProductFeaturCard(
                        name: "128 GB",
                        icon: Icons.memory_outlined,
                      ),
                      Expanded(child: SizedBox()),
                      ProductFeaturCard(
                        name: "5000 mAh",
                        icon: Icons.battery_charging_full_outlined,
                      ),
                      Expanded(child: SizedBox()),
                      ProductFeaturCard(
                        name: "20 MP",
                        icon: Icons.camera_outlined,
                      ),
                      SizedBox(width: 30)
                    ]),
                    SizedBox(height: 20),
                    Row(children: [
                      SizedBox(width: 30),
                      ProductFeaturCard(
                        name: "8 GB",
                        icon: Icons.storage_sharp,
                      ),
                      Expanded(child: SizedBox()),
                      ProductFeaturCard(
                        name: "6.1 ",
                        icon: Icons.mobile_friendly_outlined,
                      ),
                      Expanded(child: SizedBox()),
                      SizedBox(width: 80)
                    ])
                  ])
                ]))
          ]),
        ));
  }
}
