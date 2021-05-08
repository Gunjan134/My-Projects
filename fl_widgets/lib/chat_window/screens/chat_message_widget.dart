import 'package:fl_widgets/chat_window/chat_constants.dart';
import 'package:fl_widgets/chat_window/components/circular_icon.dart';
import 'package:fl_widgets/chat_window/model/app_config.dart';
import 'package:fl_widgets/widgets/animated_card.dart';
import 'package:fl_widgets/widgets/default.dart';
import 'package:fl_widgets/widgets/details_card.dart';
import 'package:fl_widgets/widgets/donut_pie_chart.dart';
import 'package:fl_widgets/widgets/filled_pie_chart.dart';
import 'package:fl_widgets/widgets/basic_list_tile.dart';
import 'package:fl_widgets/widgets/basic_list_view.dart';
import 'package:fl_widgets/widgets/big_image_card.dart';
import 'package:fl_widgets/widgets/carousel.dart';
import 'package:fl_widgets/widgets/date_picker.dart';
import 'package:fl_widgets/widgets/fa-widgets/carousel2_fa.dart';
import 'package:fl_widgets/widgets/fa-widgets/liquid_page_fa.dart';
import 'package:fl_widgets/widgets/fa-widgets/swipe_view_carousel.dart';
import 'package:fl_widgets/widgets/fl_card1.dart';
import 'package:fl_widgets/widgets/fl_card10.dart';
import 'package:fl_widgets/widgets/fl_card11.dart';
import 'package:fl_widgets/widgets/fl_card12.dart';
import 'package:fl_widgets/widgets/fl_card13.dart';
import 'package:fl_widgets/widgets/fl_card14.dart';
import 'package:fl_widgets/widgets/fl_card2.dart';
import 'package:fl_widgets/widgets/fl_card3.dart';
import 'package:fl_widgets/widgets/fl_card4.dart';
import 'package:fl_widgets/widgets/fl_card5.dart';
import 'package:fl_widgets/widgets/fl_card6.dart';
import 'package:fl_widgets/widgets/fl_card7.dart';
import 'package:fl_widgets/widgets/fl_card8.dart';
import 'package:fl_widgets/widgets/fl_card9.dart';
import 'package:fl_widgets/widgets/four_rect_cover.dart';
import 'package:fl_widgets/widgets/globe_ex.dart';
import 'package:fl_widgets/widgets/main_card.dart';
import 'package:fl_widgets/widgets/profile_info_card.dart';
import 'package:fl_widgets/widgets/simple_bar_chart.dart';
import 'package:fl_widgets/widgets/tile_indicator_card.dart';
import 'package:fl_widgets/widgets/video_player.dart';
import 'package:flutter/material.dart';

class ChatMessageWidget extends StatelessWidget {
  final String text;
  final String name;
  final bool type;
  final dynamic content;
  final AppConfig configData;
  final Map<String, Widget> mapContentToWidget = {
    "card-1": Card1(),
    "card-2": Card2(),
    "card-3": Card3(),
    "card-4": Card4(),
    "card-5": Card5('assets/images/2.jpg', 'Heading'),
    "card-6": Card6('assets/images/2.jpg', 'Heading',
        'Here goes the two line description for the newly created card named as card six.'),
    "card-7": Card7(
        'Sample title',
        'Here goes the two line description for the newly created card named as card seven.',
        'assets/images/2.jpg',
        '50% off'),
    "card-8": Card8('1 line for conditions applied', '1 line description',
        'Heading', '1 line description', 'assets/images/2.jpg', '50% off'),
    "card-9": Card9(
      'Text here',
      'Description in 2 lines here',
      'assets/images/2.jpg',
      'Button',
    ),
    "card-10": Card10(
      'Place Name',
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea',
      'assets/images/4.jpg',
      'assets/images/2.jpg',
    ),
    "card-11": Card11(
      'Place Name',
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea',
      'assets/images/2.jpg',
      '50% off',
    ),
    "card-12": Card12('Heading', 'Tag'),
    "card-13": Card13('Heading', 'Detail', 'digit', 'Title 1', '0.0 %'),
    "card-14": Card14(
        'What are you looking for?',
        'placeholder',
        'Title 1',
        'placeholder',
        'Title 2',
        'placeholder',
        'Title 3',
        'placeholder',
        'Title 4'),
    "animated-card": AnimatedCard('assets/images/order.gif', 'Sample title',
        'Sample description goes here..'),
    "basic-list-tile": BasicListTile(
        "Employee Care Center", "All you need for recreation", "1", "20"),
    "basic-list-view": BasicListView(),
    "big-image-card": BigImageCard('5'),
    "carousel": Carousel(),
    "date-picker": DatePicker(),
    "details-card": DetailsCard(),
    "four-rect-cover": FourRectCover(),
    "globe": GlobeEx(),
    "main-card": MainCard(
        'Sample title',
        'Sample subtitle',
        'Sample description goes here',
        'Botton text',
        'assets/images/home.jpg',
        'assets/pexels/1.mp4'),
    "profile-info-card": ProfileInfoCard(),
    "tile-indicator-card": TileIndicatorCard(),
    "video-player": VideoPlayerScreen(null, 'assets/pexels/1.mp4'),
    "default": Default('This is default widget'),
    "carousel2-fa": Carousel2Fa(),
    "liquid-page": MyLiquidPage(),
    "swipe-view-carousel": SwipeViewCarousel(),
    "simple-bar-chart": SimpleBarChart(),
    "donut-pie-chart": DonutPieChart(),
    "filled-pie-chart": FilledPieChart(),
  };

  ChatMessageWidget(
      {this.text, this.name, this.type, this.content, this.configData});

  List<Widget> botMessage(context) {
    return <Widget>[
      Container(
        margin: const EdgeInsets.only(right: 8.0),
        child: CircularIcon('assets/images/chatbot_icon.png'),
      ),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              name,
              style: kBold,
            ),
            Container(
              margin: const EdgeInsets.only(top: 5.0),
              child: buildChild(content, configData),
            ),
          ],
        ),
      ),
    ];
  }

  List<Widget> userMessage(context) {
    return <Widget>[
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Text(
              name,
              style: kBold,
            ),
            Container(
              decoration: kUserMessageDecoration,
              padding: const EdgeInsets.all(8.0),
              margin: const EdgeInsets.only(top: 5.0, left: 35.0),
              child: Text(text),
            ),
          ],
        ),
      ),
      Container(
        margin: const EdgeInsets.only(left: 8.0),
        child: CircularIcon('assets/images/you.png'),
      ),
    ];
  }

  Widget buildChild(content, configData) {
    if (content != null) {
      for (String contentType in mapContentToWidget.keys) {
        if (contentType == content.contentType) {
          return mapContentToWidget[contentType];
        }
      }
      return Default('Default widget');
    } else {
      return Default(text);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: this.type ? userMessage(context) : botMessage(context),
      ),
    );
  }
}
