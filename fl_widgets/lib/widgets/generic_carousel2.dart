import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class GenericCarousel2 extends StatelessWidget {
  final dynamic card;

  GenericCarousel2(this.card);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 375.0,
        width: 300.0,
        child: Carousel(
          boxFit: BoxFit.cover,
          autoplay: false,
          animationCurve: Curves.fastOutSlowIn,
          animationDuration: Duration(milliseconds: 1000),
          dotSize: 6.0,
          dotColor: Colors.grey,
          dotIncreasedColor: Color(0xFFFF335C),
          dotBgColor: Colors.transparent,
          dotPosition: DotPosition.bottomCenter,
          dotVerticalPadding: 10.0,
          showIndicator: true,
          indicatorBgPadding: 7.0,
          images: [card, card, card, card],
        ),
      ),
    );
  }
}
