import 'package:fl_widgets/widgets/big_image_card.dart';
import 'package:fl_widgets/widgets/date_picker.dart';
import 'package:flutter/material.dart';

import 'package:fl_widgets/common/app_drawer.dart';
import 'package:fl_widgets/common/lego_factory.dart';
import 'package:fl_widgets/themes/app_theme_data.dart';

class PageViewDemo extends StatefulWidget {
  PageViewDemo({Key key}) : super(key: key);

  @override
  _PageViewDemoState createState() => _PageViewDemoState();
}

class _PageViewDemoState extends State<PageViewDemo> {
  Widget theSelectedWidget = const Text(
    'Select the widget from the list below',
    overflow: TextOverflow.ellipsis,
  );
  String selectedWidgetTitle = 'Widget Demo Page';

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppThemeData.lightgrey,
      drawer: AppDrawer(),
      body: pageViewDemo(),
    );
  }

  Widget pageViewDemo() {
    return Padding(
      key: const PageStorageKey('Page1'),
      padding: const EdgeInsets.all(8.0),
      child: PageView(
        scrollDirection: Axis.vertical,
        pageSnapping: true,
        children: <Widget>[
          DatePicker(),
          BigImageCard('1'),
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                LegoMaterialFactory.getAvatarTile(
                  title: 'Carousel',
                  subtitle: 'Using the external carousel package',
                ),
              ],
            ),
          ),
          LegoMaterialFactory.getAvatarTile(),
          LegoMaterialFactory.getSmallCardType1(
            '5',
            height: 250,
            width: 250,
          ),
        ],
      ),
    );
  }
}
