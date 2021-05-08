import 'package:fl_widgets/common/lego_factory.dart';
import 'package:fl_widgets/utils/responsive_util.dart';
import 'package:flutter/material.dart';

class TileIndicatorCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Map mediaMap = ResponsiveUtil.media(context);
    double width = mediaMap['width'];
    double height = mediaMap['height'];
    return Container(
      width: width,
      height: ResponsiveUtil.isLandscape(context) ? width * 0.1 : height * 0.1,
      child: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            getIndicator(width),
            Expanded(
              flex: 4,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: LegoMaterialFactory.getAvatarTile(
                  avatarImage: null,
                  title: "Meeting with Joe",
                  subtitle: "09:00AM",
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: LegoMaterialFactory.getTitle("Jan 28"),
            ),
          ],
        ),
      ),
    );
  }

  Widget getIndicator(double width) {
    return Container(
      color: Colors.orange,
      width: 0.02 * width,
    );
  }
}
