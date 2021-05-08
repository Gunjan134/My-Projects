import 'package:fl_widgets/pages/home_page.dart';
import 'package:fl_widgets/pages/widget_demo_page.dart';
import 'package:flutter/material.dart';

import 'package:fl_widgets/common/app_bar.dart';
import 'package:fl_widgets/common/app_drawer.dart';
import 'package:fl_widgets/themes/app_theme_data.dart';

import 'page_view_demo.dart';

class BottomNavDemo extends StatefulWidget {
  BottomNavDemo({Key key}) : super(key: key);

  @override
  _BottomNavDemoState createState() => _BottomNavDemoState();
}

class _BottomNavDemoState extends State<BottomNavDemo> {
  int _selectedIndex = 0;

  List<Widget> _widgetOptions = <Widget>[];

  void populateOptions() {
    _widgetOptions.add(
      HomePage(
        key: PageStorageKey('Grid Page'),
      ),
    );
    _widgetOptions.add(
      WidgetDemoPage(
        key: PageStorageKey('Strip Page'),
      ),
    );
    _widgetOptions.add(
      PageViewDemo(
        key: PageStorageKey('Page View'),
      ),
    );
  }

  @override
  void initState() {
    populateOptions();
    super.initState();
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppThemeData.lightgrey,
      drawer: AppDrawer(),
      appBar: CommonAppBar(),
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: buildBottomNavigationBar(),
    );
  }

  BottomNavigationBar buildBottomNavigationBar() {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        const BottomNavigationBarItem(
          icon: const Icon(Icons.grid_on),
          title: const Text('Grid'),
        ),
        const BottomNavigationBarItem(
          icon: const Icon(Icons.screen_share),
          title: const Text('Strip'),
        ),
        const BottomNavigationBarItem(
          icon: const Icon(Icons.pages),
          title: const Text('Page View'),
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.blue.shade400,
      onTap: _onItemTapped,
    );
  }
}
