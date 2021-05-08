import 'package:flutter/material.dart';
import 'package:flutter_multi_carousel/carousel.dart';

class FlutterMultiCarousel extends StatelessWidget {
  final dynamic card;

  FlutterMultiCarousel(this.card);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Carousel(
        height: 350.0,
        width: 350,
        initialPage: 3,
        allowWrap: false,
        type: Types.simple,
        onCarouselTap: (i) {
          print("onTap $i");
        },
        indicatorType: IndicatorTypes.bar,
        arrowColor: Colors.black,
        axis: Axis.horizontal,
        showArrow: true,
        children: List.generate(
          7,
          (i) => SingleChildScrollView(
            child: card,
          ),
        ),
      ),
    );
  }
}
