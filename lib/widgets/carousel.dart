import 'package:fl_widgets/widgets/fl_card1.dart';
import 'package:fl_widgets/widgets/fl_card2.dart';
import 'package:fl_widgets/widgets/fl_card3.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Carousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.pink,
      child: CarouselSlider(
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 2),
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
        viewportFraction: 0.8,
        height: 350.0,
        items: [
          Card1(),
          Card2(),
          Card3(),
        ],
        //  [9, 13, 7, 6].map(
        //   (i) {
        //     return Builder(
        //       builder: (BuildContext context) {
        //         return Container(
        //           width: MediaQuery.of(context).size.width,
        //           margin: const EdgeInsets.symmetric(horizontal: 5.0),
        //           decoration: BoxDecoration(
        //             border: Border.all(width: 0.0),
        //             color: Colors.white,
        //             boxShadow: <BoxShadow>[
        //               const BoxShadow(
        //                 spreadRadius: 3.0,
        //                 blurRadius: 5.0,
        //                 color: Colors.grey,
        //               ),
        //             ],
        //           ),
        //           child: Image.asset('assets/images/$i.jpg', fit: BoxFit.cover),
        //         );
        //       },
        //     );
        //   },
        // ).toList(),
      ),
    );
  }
}
