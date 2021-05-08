import 'package:fl_widgets/common/lego_factory.dart';
import 'package:fl_widgets/utils/responsive_util.dart';
import 'package:flutter/material.dart';

class FourRectCover extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Map media = ResponsiveUtil.media(context);
    double height = media['height'];
    return Container(
      height: height * 0.81,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  color: Colors.orange,
                  child: LegoMaterialFactory.getImageContainer(
                    imageName: 'assets/pexels/ff4.jpeg',
                    height: height * 0.4,
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.blue,
                  child: LegoMaterialFactory.getImageContainer(
                    imageName: 'assets/pexels/14.jpeg',
                    height: height * 0.4,
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  color: Colors.blue,
                  child: LegoMaterialFactory.getImageContainer(
                    imageName: 'assets/pexels/ff6.jpeg',
                    height: height * 0.4,
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.orange,
                  child: LegoMaterialFactory.getImageContainer(
                    imageName: 'assets/pexels/7.jpeg',
                    height: height * 0.4,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
