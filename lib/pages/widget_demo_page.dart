import 'package:flutter/material.dart';

import 'package:fl_widgets/common/app_drawer.dart';
import 'package:fl_widgets/common/lego_factory.dart';
import 'package:fl_widgets/services/widget_service.dart';
import 'package:fl_widgets/themes/app_theme_data.dart';

class WidgetDemoPage extends StatefulWidget {
  WidgetDemoPage({Key key}) : super(key: key);

  @override
  _WidgetDemoPageState createState() => _WidgetDemoPageState();
}

class _WidgetDemoPageState extends State<WidgetDemoPage> {
  Widget theSelectedWidget = const Text(
    'Select the widget from the list below',
    overflow: TextOverflow.ellipsis,
  );
  String selectedWidgetTitle = 'Widget Demo Page';

  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        backgroundColor: AppThemeData.lightgrey,
        drawer: AppDrawer(),
        body: demoWidgets(width, height),
      ),
    );
  }

  Widget demoWidgets(double width, double height) {
    return Container(
      height: height,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 1,
            child:
                LegoMaterialFactory.getAvatarTile(title: selectedWidgetTitle),
          ),
          Expanded(
            flex: 4,
            child: Align(
              alignment: Alignment.center,
              child: SingleChildScrollView(child: this.theSelectedWidget),
            ),
          ),
          Expanded(
            flex: 2,
            child: getListOfWidgets(
              width,
              height,
            ),
          ),
        ],
      ),
    );
  }

  Widget getListOfWidgets(double width, double height) {
    return SizedBox(
      child: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 5,
          vertical: 30,
        ),
        scrollDirection: Axis.horizontal,
        itemExtent: width * 0.43,
        children: [
          getClickableCard('4',
              title: 'TileIndicatorCard', subtitle: ' Tile Indicator Card'),
          getClickableCard('19',
              title: 'BasicListView', subtitle: 'Basic List View'),
          getClickableCard('20',
              title: 'DatePicker', subtitle: ' A Date Picker'),
          getClickableCard('16',
              title: 'BasicListTile', subtitle: ' A  BasicListTile '),
          getClickableCard('5',
              title: 'BigImageCard', subtitle: ' A Big Image Card'),
          getClickableCard('4',
              title: 'AnimatedCard', subtitle: ' An Animated Card'),
          getClickableCard('6',
              title: 'DetailsCard', subtitle: ' A Details Card'),
          getClickableCard('8',
              title: 'VideoPlayer', subtitle: ' A VideoPlayer Screen'),
          getClickableCard('19', title: 'MainCard', subtitle: ' A Big Card'),
          getClickableCard('20', title: 'Globe', subtitle: ' A tour of Globe'),
          getClickableCard('16', title: 'Card 1', subtitle: 'First New Card'),
          getClickableCard('4', title: 'Card 2', subtitle: 'Second New Card'),
          getClickableCard('5', title: 'Card 3', subtitle: 'Third New Card'),
          getClickableCard('6', title: 'Card 4', subtitle: 'Fourth New Card'),
          getClickableCard('7', title: 'Card 5', subtitle: 'Fifth New Card'),
          getClickableCard('8', title: 'Card 6', subtitle: 'Sixth New Card'),
          getClickableCard('19', title: 'Card 7', subtitle: 'Seventh New Card'),
          getClickableCard('20', title: 'Card 8', subtitle: 'Eighth New Card'),
          getClickableCard('21', title: 'Card 9', subtitle: 'Nineth New Card'),
          getClickableCard('16', title: 'Card 10', subtitle: 'Tenth New Card'),
          getClickableCard('4',
              title: 'Card 11', subtitle: 'Eleventh New Card'),
          getClickableCard('5',
              title: 'Card 12', subtitle: 'Twelveth New Card'),
          getClickableCard('6',
              title: 'Card 13', subtitle: 'Thirteenth New Card'),
          getClickableCard('7',
              title: 'Card 14', subtitle: 'Fourteenth New Card'),
          getClickableCard('16',
              title: 'Liquid page FA', subtitle: ' An FA Liquid page Widget'),
          getClickableCard('5',
              title: 'Swipe View Carousel', subtitle: ' A Swipe View Carousel'),
        ],
      ),
    );
  }

  Widget getClickableCard(String imageName,
      {String title = 'The Title', String subtitle = 'A Subtitle'}) {
    return GestureDetector(
      onTap: () {
        setState(() {
          theSelectedWidget = WidgetService.getWidget(title);
          print('Tapped widget $theSelectedWidget');
          selectedWidgetTitle = title;
        });
      },
      child: LegoMaterialFactory.getSmallCardType1(imageName,
          title: title, subtitle: subtitle),
    );
  }
}
