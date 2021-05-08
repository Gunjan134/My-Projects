import 'package:fl_widgets/common/app_bar.dart';
import 'package:fl_widgets/common/app_drawer.dart';
import 'package:fl_widgets/common/common_widgets.dart';
import 'package:fl_widgets/common/lego_factory.dart';
import 'package:fl_widgets/themes/app_theme_data.dart';
import 'package:flutter/material.dart';

import 'bottom_nav_demo.dart';

class WidgetTestPage extends StatelessWidget {
  final List<Widget> widgetList = <Widget>[
    CommonWidgets.getPageHeader(
        'Material Lego Blocks', 'Cool Custom Widgets', Icons.photo_library),
    LegoMaterialFactory.getAvatarTile(),
    LegoMaterialFactory.get4Icons1ButtonRow(),
    const SizedBox(
      height: 50,
    ),
    LegoMaterialFactory.getImageContainer(),
    const SizedBox(
      height: 50,
    ),
    LegoMaterialFactory.getRowOfIcons(),
    const SizedBox(
      height: 50,
    ),
    LegoMaterialFactory.getTextDescriptionRow(),
    const SizedBox(
      height: 50,
    ),
    LegoMaterialFactory.getIconTileTitleOnlyRow(),
    const SizedBox(
      height: 50,
    ),
    LegoMaterialFactory.getSmallCardType1('6'),
    const SizedBox(
      height: 50,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppThemeData.lightgrey,
      drawer: AppDrawer(),
      appBar: CommonAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: widgetList),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        tooltip: 'Go Back to Library',
        label: const Text('Widget Library'),
        icon: const Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => BottomNavDemo(),
            ),
          );
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
