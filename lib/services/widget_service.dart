import 'package:fl_widgets/widgets/animated_card.dart';
import 'package:fl_widgets/widgets/default.dart';
import 'package:fl_widgets/widgets/details_card.dart';
import 'package:fl_widgets/widgets/basic_list_tile.dart';
import 'package:fl_widgets/widgets/basic_list_view.dart';
import 'package:fl_widgets/widgets/big_image_card.dart';
import 'package:fl_widgets/widgets/carousel.dart';
import 'package:fl_widgets/widgets/date_picker.dart';
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
import 'package:fl_widgets/widgets/tile_indicator_card.dart';
import 'package:fl_widgets/widgets/video_player.dart';
import 'package:flutter/material.dart';

class WidgetService {
  static Map<String, Widget> widgetsMap = Map<String, Widget>();

  static Widget getWidget(String widgetName) {
    if (widgetsMap.isEmpty) _initializeMap();
    return widgetsMap[widgetName];
  }

  static void putWidget(String widgetName, Widget widget) {
    widgetsMap[widgetName] = widget;
  }

  static void _initializeMap() {
    widgetsMap["BasicListTile"] =
        BasicListTile('Tile Title', 'Tile Subtitle', 'ff6', 'TH');
    widgetsMap["BasicListView"] = BasicListView();
    widgetsMap["BigImageCard"] = BigImageCard('ff6');
    widgetsMap["Carousel"] = Carousel();
    widgetsMap["DatePicker"] = DatePicker();
    widgetsMap["TileIndicatorCard"] = TileIndicatorCard();
    widgetsMap["FourRectCover"] = FourRectCover();
    widgetsMap["AnimatedCard"] = AnimatedCard('assets/images/order.gif',
        'Sample title', 'Sample description goes here..');
    widgetsMap["DetailsCard"] = DetailsCard();
    widgetsMap["VideoPlayer"] = VideoPlayerScreen(null, 'assets/pexels/1.mp4');
    widgetsMap["MainCard"] = MainCard(
        'Sample title',
        'Sample subtitle',
        'Sample description goes here',
        'Botton text',
        'assets/images/home.jpg',
        'assets/pexels/1.mp4');
    widgetsMap["Globe"] = GlobeEx();
    widgetsMap["Card 1"] = Card1();
    widgetsMap["Card 2"] = Card2();
    widgetsMap["Card 3"] = Card3();
    widgetsMap["Card 4"] = Card4();
    widgetsMap["Card 5"] = Card5('assets/images/arab.jpg', 'Heading');
    widgetsMap["Card 6"] = Card6('assets/images/all.jpg', 'Heading',
        'Here goes the two line description for the newly created card named as card six.');
    widgetsMap["Card 7"] = Card7(
        'Sample title',
        'Here goes the two line description for the newly created card named as card seven.',
        'assets/images/thail.jpg',
        '50% off');
    widgetsMap["Card 8"] = Card8(
        '1 line for conditions applied',
        '1 line description',
        'Heading',
        '1 line description',
        'assets/images/thail.jpg',
        '50% off');
    widgetsMap["Card 9"] = Card9('Text here', 'Description in 2 lines here',
        'assets/images/psv.jpg', 'Button');
    widgetsMap["Card 10"] = Card10(
      'Place Name',
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea',
      'assets/images/bk.jpg',
      'assets/images/arab.jpg',
    );
    widgetsMap["Card 11"] = Card11(
      'Place Name',
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea',
      'assets/images/arab.jpg',
      '50% off',
    );
    widgetsMap["Card 12"] = Card12('Heading', 'Tag');
    widgetsMap["Card 13"] =
        Card13('Heading', 'Detail', 'digit', 'Title 1', '0.0 %');
    widgetsMap["Card 14"] = Card14(
        'What are you looking for?',
        'placeholder',
        'Contact card',
        'placeholder',
        'Online payment',
        'placeholder',
        'Savings',
        'placeholder',
        'Account Detail');
    widgetsMap["Default"] = Default('Some text');
    widgetsMap["Liquid page FA"] = MyLiquidPage();
    widgetsMap["Swipe View Carousel"] = SwipeViewCarousel();
  }
}
