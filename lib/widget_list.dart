import 'package:fl_widgets/common/common_navigator.dart';
import 'package:fl_widgets/pages/widget_detail_page.dart';
import 'package:flutter/material.dart';

import 'widgets/basic_list_tile.dart';
import 'widgets/carousel.dart';
import 'widgets/date_picker.dart';

class WidgetList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _getGridWidget(context);
  }

  Widget _getGridWidget(BuildContext context) {
    return new Flexible(
      child: GridView.count(
        shrinkWrap: true,
        primary: true,
        physics: BouncingScrollPhysics(),
        padding: const EdgeInsets.all(10),
        childAspectRatio: 1,
        crossAxisSpacing: 1,
        mainAxisSpacing: 1,
        crossAxisCount: 2,
        children: <Widget>[
          _getCardWidget(context, 4, Colors.lightBlue, Icons.credit_card,
              "Date Picker", "4 Likes", DatePicker()),
          _getCardWidget(context, 6, Colors.deepOrange, Icons.casino,
              "Carousel", "4 Likes", Carousel()),
          _getCardWidget(
              context,
              9,
              Colors.blue,
              Icons.restore,
              "Basic List Tile",
              "40 Likes",
              BasicListTile("Employee Care Center",
                  "All you need for recreation", "1", "20")),
        ],
      ),
    );
  }

  Widget _getCardWidget(BuildContext context, int index, Color iconColor,
      IconData iconData, String title, String subtitle, Widget widget) {
    return Center(
      child: GestureDetector(
        onTap: () {
          CommonNavigator.navigateTo(
            context,
            WidgetDetailPage(widget, title),
          );
        },
        child: Card(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ListTile(
                leading: Icon(
                  iconData,
                  color: iconColor,
                  size: 40,
                ),
              ),
              ListTile(
                contentPadding: EdgeInsets.fromLTRB(10, 25, 5, 5),
                title: Text(title),
                subtitle: Text(subtitle),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
