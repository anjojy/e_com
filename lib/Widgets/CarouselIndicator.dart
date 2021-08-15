import 'package:flutter/material.dart';

class CarouselIndicator extends StatelessWidget {
  const CarouselIndicator({
    Key? key,
    required List<Widget> pages,
    required int currentImage,
  })  : _pages = pages,
        _currentImage = currentImage,
        super(key: key);

  final List<Widget> _pages;
  final int _currentImage;

  @override
  Widget build(BuildContext context) {
    return Row(
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
        }));
  }
}
