import 'package:fl_widgets/common/lego_factory.dart';
import 'package:fl_widgets/widget_library.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final String title;

  HomePage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: LegoMaterialFactory.getAvatarTile(
                  title: "Widget Grid", subtitle: "Custom Flutter Widgets"),
            ),
            WidgetLibrary(),
          ],
        ),
      ),
    );
  }
}
