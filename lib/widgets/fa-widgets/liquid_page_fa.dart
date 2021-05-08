import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

class MaterialColors {
  static const red = Color(0xffd50000);
  static const blue = Color(0xff2962ff);
  static const yellow = Color(0xffffd600);
  static const green = Color(0xff00c853);
  static const purple = Color(0xffaa00ff);
  static const pink = Color(0xffc51162);
  static const orange = Color(0xffff6d00);
  static const teal = Color(0xff00bfa5);
}

class MyLiquidPage extends StatefulWidget {
  @override
  _MyLiquidPageState createState() => _MyLiquidPageState();
}

class _MyLiquidPageState extends State<MyLiquidPage> {
  @override
  Widget build(BuildContext context) {
    final pages = [
      Container(
        color: MaterialColors.pink,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: Container(
                    width: 300,
                    height: 300,
                    child: Container(
                      width: 50.0,
                      height: 50.0,
                      child: Image.asset(
                        'assets/images/1.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                const Text(
                  '<< Swipe in any direction >>',
                  style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 20.0,
                    color: Color(0xffeceff1),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      Container(
        color: MaterialColors.yellow,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: Container(
                    width: 300,
                    height: 300,
                    child: Container(
                      width: 50.0,
                      height: 50.0,
                      child: Image.asset(
                        'assets/images/2.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                const Text(
                  '<< Swipe in any direction >>',
                  style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 20.0,
                    color: Color(0xffeceff1),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      Container(
        color: MaterialColors.green,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: Container(
                    width: 300,
                    height: 300,
                    child: Container(
                      width: 50.0,
                      height: 50.0,
                      child: Image.asset(
                        'assets/images/3.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                const Text(
                  '<< Swipe in any direction >>',
                  style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 20.0,
                    color: Color(0xffeceff1),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ];

    return Container(
      alignment: Alignment.center,
      height: MediaQuery.of(context).size.height * 0.65,
      width: MediaQuery.of(context).size.width,
      child: LiquidSwipe(
        pages: pages,
        initialPage: 1,
        fullTransitionValue: 350.0,
        enableLoop: true,
        waveType: WaveType.liquidReveal,
        onPageChangeCallback: (int a) => (a + 1),
        currentUpdateTypeCallback: (UpdateType updateType) {},
      ),
    );
  }
}
