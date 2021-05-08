import 'package:fl_widgets/pages/widget_detail_page.dart';
import 'package:flutter/material.dart';

import 'common_navigator.dart';

enum PopOptions { harder, smarter, selfStarter, tradingCharter }

class CommonWidgets {
  static Widget getPageHeader(
      String title, String subtitle, IconData icondata) {
    return Container(
      child: ListTile(
        leading: Icon(icondata, size: 35.0),
        title: Text(
          title,
          style: const TextStyle(fontSize: 20),
        ),
        subtitle: Text(
          subtitle,
          style: const TextStyle(fontSize: 13),
        ),
        trailing: const Icon(Icons.more_vert),
      ),
    );
  }

  static Widget getPopupMenuButton() {
    return PopupMenuButton<PopOptions>(
      onSelected: (PopOptions result) {},
      itemBuilder: (BuildContext context) => <PopupMenuEntry<PopOptions>>[
        const PopupMenuItem<PopOptions>(
          value: PopOptions.harder,
          child: const Text('Test Page'),
        ),
        const PopupMenuItem<PopOptions>(
          value: PopOptions.smarter,
          child: const Text('Being a lot smarter'),
        ),
        const PopupMenuItem<PopOptions>(
          value: PopOptions.selfStarter,
          child: const Text('Being a self-starter'),
        ),
        const PopupMenuItem<PopOptions>(
          value: PopOptions.tradingCharter,
          child: const Text('Placed in charge of trading charter'),
        ),
      ],
    );
  }

  static Widget getTileWidget(String text) {
    return Container(
      decoration: const BoxDecoration(
        boxShadow: <BoxShadow>[
          const BoxShadow(
              blurRadius: 0.0, spreadRadius: 0.0, color: Colors.grey),
        ],
        color: Colors.white,
      ),
      padding: const EdgeInsets.all(8),
      child: Text(text),
    );
  }

  static Widget getSliverAppBar() {
    return SliverAppBar(
      expandedHeight: 150.0,
      flexibleSpace: const FlexibleSpaceBar(
        title: const Text('Available seats'),
      ),
      actions: <Widget>[
        IconButton(
          icon: const Icon(Icons.add_circle),
          tooltip: 'Add new entry',
          onPressed: () {},
        ),
      ],
    );
  }

  static Widget getPlainCardWidget(
      BuildContext context,
      int index,
      Color iconColor,
      IconData iconData,
      String title,
      String subtitle,
      Widget widget) {
    return GestureDetector(
      child: GestureDetector(
        onTap: () {
          CommonNavigator.navigateTo(context, WidgetDetailPage(widget, title));
        },
        child: Card(
          child: Container(
            padding: const EdgeInsets.all(10),
            width: MediaQuery.of(context).size.width * 0.40,
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    iconData,
                    color: iconColor,
                    size: 30,
                  ),
                  const SizedBox(height: 70),
                  Text(
                    title,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    subtitle,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
