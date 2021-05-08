import 'package:fl_widgets/chat_window/chat_main.dart';
import 'package:fl_widgets/constants.dart';
import 'package:fl_widgets/pages/bottom_nav_demo.dart';
import 'package:fl_widgets/pages/page_view_demo.dart';
import 'package:fl_widgets/pages/widget_demo_page.dart';
import 'package:fl_widgets/pages/widget_test_page.dart';
import 'package:flutter/material.dart';

import 'common_navigator.dart';

const String drawerTopImagePath = 'assets/images/3.jpg';
const String drawerHeadingText = 'Widgets Library';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          _createHeader(),
          _createDrawerItem(
              icon: Icons.computer,
              text: 'Lego Blocks',
              onTap: () =>
                  CommonNavigator.navigateTo(context, WidgetTestPage())),
          _createDrawerItem(
              icon: Icons.event,
              text: 'Component Demo',
              onTap: () =>
                  CommonNavigator.navigateTo(context, WidgetDemoPage())),
          _createDrawerItem(
              icon: Icons.note,
              text: 'Page View',
              onTap: () => CommonNavigator.navigateTo(context, PageViewDemo())),
          const Divider(),
          _createDrawerItem(
              icon: Icons.collections_bookmark,
              text: 'Bottom Nav Bar',
              onTap: () =>
                  CommonNavigator.navigateTo(context, BottomNavDemo())),
          _createDrawerItem(
              icon: Icons.account_box, text: 'Flutter Documentation'),
          _createDrawerItem(
            icon: Icons.chat,
            text: 'Chat with our experts',
            onTap: () => CommonNavigator.navigateTo(context, ChatMain()),
          ),
          _createDrawerItem(icon: Icons.face, text: 'Authors'),
          _createDrawerItem(icon: Icons.stars, text: 'Useful Links'),
          const Divider(),
          _createDrawerItem(icon: Icons.bug_report, text: 'Report an issue'),
          ListTile(
            title: Text('0.0.1'),
            onTap: () {},
          ),
        ],
      ),
    );
  }

  Widget _createHeader() {
    return DrawerHeader(
      margin: EdgeInsets.zero,
      padding: EdgeInsets.zero,
      decoration: const BoxDecoration(
        color: const Color.fromRGBO(255, 255, 255, 1.0),
        image: const DecorationImage(
          fit: BoxFit.cover,
          image: const AssetImage(drawerTopImagePath),
        ),
      ),
      child: Stack(
        children: <Widget>[
          Positioned(
            bottom: 56.0,
            left: 56.0,
            child: const Text(
              drawerHeadingText,
              style: kDrawerHeadingStyle,
            ),
          ),
        ],
      ),
    );
  }

  Widget _createDrawerItem(
      {IconData icon, String text, GestureTapCallback onTap}) {
    return ListTile(
      title: Row(
        children: <Widget>[
          Icon(icon),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(text),
          ),
        ],
      ),
      onTap: onTap,
    );
  }
}
