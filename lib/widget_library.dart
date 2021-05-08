import 'package:fl_widgets/widgets/animated_card.dart';
import 'package:fl_widgets/widgets/details_card.dart';
import 'package:fl_widgets/widgets/donut_pie_chart.dart';
import 'package:fl_widgets/widgets/filled_pie_chart.dart';
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
import 'package:fl_widgets/widgets/fl_multi_carousel.dart';
import 'package:fl_widgets/widgets/four_rect_cover.dart';
import 'package:fl_widgets/widgets/generic_carousel1.dart';
import 'package:fl_widgets/widgets/generic_carousel2.dart';
import 'package:fl_widgets/widgets/globe_ex.dart';
import 'package:fl_widgets/widgets/main_card.dart';
import 'package:fl_widgets/widgets/profile_info_card.dart';
import 'package:fl_widgets/widgets/simple_bar_chart.dart';
import 'package:fl_widgets/widgets/video_player.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'common/common_widgets.dart';
import 'widgets/basic_list_tile.dart';
import 'widgets/basic_list_view.dart';
import 'widgets/big_image_card.dart';
import 'widgets/carousel.dart';
import 'widgets/date_picker.dart';

class WidgetLibrary extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _getGridWidget(context);
  }

  Widget _getGridWidget(BuildContext context) {
    return Flexible(
      child: GridView.count(
        shrinkWrap: true,
        primary: true,
        physics: BouncingScrollPhysics(),
        padding: const EdgeInsets.all(10),
        childAspectRatio: 1.0,
        crossAxisSpacing: 10,
        mainAxisSpacing: 5,
        crossAxisCount:
            MediaQuery.of(context).orientation == Orientation.landscape ? 4 : 2,
        children: <Widget>[
          CommonWidgets.getPlainCardWidget(
              context,
              1,
              Colors.blue,
              Icons.restore,
              "Profile Info Card",
              "40 Likes",
              ProfileInfoCard()),
          CommonWidgets.getPlainCardWidget(context, 1, Colors.blue,
              Icons.restore, "My List", "40 Likes", BasicListView()),
          CommonWidgets.getPlainCardWidget(context, 3, Colors.orange,
              Icons.list, "Big Image Card", "40 Likes", BigImageCard("5")),
          CommonWidgets.getPlainCardWidget(context, 4, Colors.lightBlue,
              Icons.credit_card, "Date Picker", "4 Likes", DatePicker()),
          CommonWidgets.getPlainCardWidget(context, 6, Colors.deepOrange,
              Icons.casino, "Carousel", "4 Likes", Carousel()),
          CommonWidgets.getPlainCardWidget(
            context,
            9,
            Colors.blue,
            Icons.restore,
            "Basic List Tile",
            "40 Likes",
            BasicListTile("Employee Care Center", "All you need for recreation",
                "1", "20"),
          ),
          CommonWidgets.getPlainCardWidget(
            context,
            10,
            Colors.green,
            Icons.ring_volume,
            "This Card",
            "4 Likes",
            CommonWidgets.getPlainCardWidget(
                context,
                9,
                Colors.green,
                Icons.ring_volume,
                "This Card",
                "4 Likes",
                Text("I'm Really Cool..")),
          ),
          CommonWidgets.getPlainCardWidget(context, 9, Colors.green,
              Icons.ring_volume, "Four Rect Cover", "4 Likes", FourRectCover()),
          CommonWidgets.getPlainCardWidget(
              context,
              11,
              Colors.blue,
              Icons.assistant,
              "Animated Card",
              "20 Likes",
              AnimatedCard('assets/images/order.gif', 'Sample title',
                  'Sample description goes here..')),
          CommonWidgets.getPlainCardWidget(context, 13, Colors.orange,
              Icons.details, "Details Card", "9 Likes", DetailsCard()),
          CommonWidgets.getPlainCardWidget(
              context,
              15,
              Colors.blueAccent,
              Icons.play_circle_outline,
              "Video Player Screen",
              "25 Likes",
              VideoPlayerScreen(null, 'assets/pexels/1.mp4')),
          CommonWidgets.getPlainCardWidget(
              context,
              16,
              Colors.purple,
              Icons.card_membership,
              "Main card",
              "20 Likes",
              MainCard(
                  'Sample title',
                  'Sample subtitle',
                  'Sample description goes here',
                  'Botton text',
                  'assets/images/home.jpg',
                  'assets/pexels/1.mp4')),
          CommonWidgets.getPlainCardWidget(context, 18, Colors.blue,
              FontAwesomeIcons.globe, "Globe", "15 Likes", GlobeEx()),
          CommonWidgets.getPlainCardWidget(context, 17, Colors.pink,
              Icons.card_giftcard, "Card 1", "15 Likes", Card1()),
          CommonWidgets.getPlainCardWidget(context, 18, Colors.green,
              Icons.new_releases, "Card 2", "25 Likes", Card2()),
          CommonWidgets.getPlainCardWidget(context, 19, Colors.black,
              Icons.collections, "Card 3", "18 Likes", Card3()),
          CommonWidgets.getPlainCardWidget(context, 20, Colors.blue,
              Icons.grade, "Card 4", "20 Likes", Card4()),
          CommonWidgets.getPlainCardWidget(
              context,
              21,
              Colors.orange,
              Icons.info,
              "Card 5",
              "29 Likes",
              Card5('assets/images/arab.jpg', 'Heading')),
          CommonWidgets.getPlainCardWidget(
              context,
              22,
              Colors.blueAccent,
              Icons.card_travel,
              "Card 6",
              "30 Likes",
              Card6('assets/images/all.jpg', 'Heading',
                  'Here goes the two line description for the newly created card named as card six.')),
          CommonWidgets.getPlainCardWidget(
            context,
            23,
            Colors.blue,
            Icons.label_important,
            "Card 7",
            "27 Likes",
            Card7(
                'Sample title',
                'Here goes the two line description for the newly created card named as card seven.',
                'assets/images/thail.jpg',
                '50% off'),
          ),
          CommonWidgets.getPlainCardWidget(
            context,
            24,
            Colors.green,
            Icons.aspect_ratio,
            "Card 8",
            "18 Likes",
            Card8(
                '1 line for conditions applied',
                '1 line description',
                'Heading',
                '1 line description',
                'assets/images/thail.jpg',
                '50% off'),
          ),
          CommonWidgets.getPlainCardWidget(
            context,
            25,
            Colors.orange,
            Icons.navigation,
            "Card 9",
            "40 Likes",
            Card9(
              'Text here',
              'Description in 2 lines here',
              'assets/images/psv.jpg',
              'Button',
            ),
          ),
          CommonWidgets.getPlainCardWidget(
            context,
            26,
            Colors.purple,
            Icons.directions,
            "Card 10",
            "30 Likes",
            Card10(
              'Place Name',
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea',
              'assets/images/bk.jpg',
              'assets/images/arab.jpg',
            ),
          ),
          CommonWidgets.getPlainCardWidget(
            context,
            27,
            Colors.yellow,
            Icons.toys,
            "Card 11",
            "15 Likes",
            Card11(
              'Place Name',
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea',
              'assets/images/arab.jpg',
              '50% off',
            ),
          ),
          CommonWidgets.getPlainCardWidget(
            context,
            28,
            Colors.green,
            Icons.grade,
            "Card 12",
            "20 Likes",
            Card12('Heading', 'Tag'),
          ),
          CommonWidgets.getPlainCardWidget(
            context,
            29,
            Colors.orange,
            Icons.photo_filter,
            "Card 13",
            "30 Likes",
            Card13('Heading', 'Detail', 'digit', 'Title 1', '0.0 %'),
          ),
          CommonWidgets.getPlainCardWidget(
            context,
            30,
            Colors.purple,
            Icons.favorite,
            "Card 14",
            "40 Likes",
            Card14(
                'What are you looking for?',
                'placeholder',
                'Contact card',
                'placeholder',
                'Online payment',
                'placeholder',
                'Savings',
                'placeholder',
                'Account Detail'),
          ),
          CommonWidgets.getPlainCardWidget(context, 48, Colors.green,
              Icons.flare, "Carousel FA", "20 Likes", Carousel2Fa()),
          CommonWidgets.getPlainCardWidget(context, 48, Colors.green,
              Icons.flare, "Liquid page FA", "20 Likes", MyLiquidPage()),
          CommonWidgets.getPlainCardWidget(
              context,
              48,
              Colors.green,
              Icons.flare,
              "Swipe View Carousel",
              "20 Likes",
              SwipeViewCarousel()),
          CommonWidgets.getPlainCardWidget(
            context,
            49,
            Colors.pink,
            Icons.insert_chart,
            "Simple bar chart",
            "20 Likes",
            SimpleBarChart(),
          ),
          CommonWidgets.getPlainCardWidget(
              context,
              50,
              Colors.orange,
              Icons.pie_chart_outlined,
              "Donut pie chart",
              "40 Likes",
              DonutPieChart()),
          CommonWidgets.getPlainCardWidget(
              context,
              51,
              Colors.green,
              Icons.pie_chart,
              "Filled pie chart",
              "40 Likes",
              FilledPieChart()),
          CommonWidgets.getPlainCardWidget(
            context,
            51,
            Colors.green,
            Icons.pie_chart,
            "Generic carousel 1",
            "40 Likes",
            GenericCarousel1(
              Card10(
                'Place Name',
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea',
                'assets/images/bk.jpg',
                'assets/images/arab.jpg',
              ),
            ),
          ),
          CommonWidgets.getPlainCardWidget(
            context,
            51,
            Colors.green,
            Icons.pie_chart,
            "Generic carousel 2",
            "40 Likes",
            GenericCarousel2(
              Card10(
                'Place Name',
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea',
                'assets/images/bk.jpg',
                'assets/images/arab.jpg',
              ),
            ),
          ),
          CommonWidgets.getPlainCardWidget(
            context,
            51,
            Colors.green,
            Icons.view_carousel,
            "Flutter multi carousel",
            "40 Likes",
            FlutterMultiCarousel(
              Card10(
                'Place Name',
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea',
                'assets/images/bk.jpg',
                'assets/images/arab.jpg',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
