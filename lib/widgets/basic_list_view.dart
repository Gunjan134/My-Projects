import 'package:fl_widgets/widgets/basic_list_tile.dart';
import 'package:flutter/material.dart';

class BasicListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Orientation orientation = MediaQuery.of(context).orientation;
    double height = MediaQuery.of(context).size.height;
    return SizedBox(
      height:
          orientation == Orientation.landscape ? height * .50 : height * .70,
      child: getListView(),
    );
  }

  Widget getListView() {
    return ListView(
      shrinkWrap: true,
      padding: const EdgeInsets.only(bottom: 3.0),
      children: <Widget>[
        BasicListTile(
            "Employee Care Center", "All you need for recreation", "21", "20"),
        const SizedBox(
          height: 20,
        ),
        BasicListTile(
            "Food Court ", "Variety and quality with ease", "2", "10"),
        const SizedBox(
          height: 20,
        ),
        BasicListTile(
            "Event Registration", "All the event related stuff", "3", "30"),
        const SizedBox(
          height: 20,
        ),
        BasicListTile(
            "NASSCOM CXO Breakfast", "Lets meet the CXOs ", "4", "50"),
        const SizedBox(
          height: 20,
        ),
        BasicListTile("Opensource Contributions now",
            "All contributions invited and welcome yes yes yes ", "5", "90"),
        const SizedBox(
          height: 20,
        ),
        BasicListTile(
            "Employee Care Center", "All you need for recreation", "11", "20"),
        const SizedBox(
          height: 20,
        ),
        BasicListTile(
            "Food Court ", "Variety and quality with ease", "2", "10"),
        const SizedBox(
          height: 20,
        ),
        BasicListTile(
            "Event Registration", "All the event related stuff", "3", "30"),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }

  Widget getScrollListView() {
    return CustomScrollView(
      shrinkWrap: true,
      slivers: <Widget>[
        SliverPadding(
          padding: const EdgeInsets.all(2.0),
          sliver: SliverList(
            delegate: SliverChildListDelegate(
              <Widget>[
                BasicListTile("Employee Care Center",
                    "All you need for recreation", "1", "20"),
                const SizedBox(
                  height: 20,
                ),
                BasicListTile(
                    "Food Court ", "Variety and quality with ease", "2", "10"),
                const SizedBox(
                  height: 20,
                ),
                BasicListTile("Event Registration",
                    "All the event related stuff", "3", "30"),
                const SizedBox(
                  height: 20,
                ),
                BasicListTile(
                    "NASSCOM CXO Session", "Lets meet the CXOs ", "4", "50"),
                const SizedBox(
                  height: 20,
                ),
                BasicListTile("Opensource Contribution",
                    "All contributions invited", "5", "90"),
                BasicListTile("Event Registration",
                    "All the event related stuff", "3", "30"),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
