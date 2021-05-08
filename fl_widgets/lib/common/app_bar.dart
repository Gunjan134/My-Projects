import 'package:fl_widgets/themes/app_theme_data.dart';
import 'package:flutter/material.dart';

const String appBarLogo = 'assets/images/icets-logo.png';

class CommonAppBar extends AppBar {
  CommonAppBar()
      : super(
          backgroundColor: AppThemeData.lightgrey,
          title: Image.asset(
            appBarLogo,
            height: 30,
          ),
          elevation: 1,
          actions: <Widget>[],
        );
}
