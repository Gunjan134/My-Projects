import 'package:fl_widgets/common/app_bar.dart';
import 'package:fl_widgets/common/app_drawer.dart';
import 'package:fl_widgets/common/lego_factory.dart';
import 'package:fl_widgets/pages/bottom_nav_demo.dart';
import 'package:flutter/material.dart';

class WidgetDetailPage extends StatelessWidget {
  final Widget selectedWidget;
  final String widgetName;

  WidgetDetailPage(this.selectedWidget, this.widgetName);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      drawer: AppDrawer(),
      appBar: CommonAppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: LegoMaterialFactory.getAvatarTile(
                      title: widgetName, subtitle: 'Custom Flutter Widgets'),
                ),
                Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: selectedWidget),
              ],
            ),
          ),
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
