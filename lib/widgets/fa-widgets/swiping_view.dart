import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'dart:math';

List<String> swipingCardImages = [
  'assets/images/1.jpg',
  'assets/images/2.jpg',
  'assets/images/3.jpg',
  'assets/images/4.jpg',
  'assets/images/5.jpg',
];

List<String> swipingCardTitles = [
  'Pizza5',
  'Pizza4',
  'Pizza3',
  'Pizza2',
  'Pizza1',
];

class SwipingView extends StatelessWidget {
  final currentPage;
  final padding = 26.0;
  final verticalInset = 42.0;

  SwipingView(this.currentPage);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: (12.0 / 16.0) * 1.2,
      child: LayoutBuilder(
        builder: (context, constraints) {
          var width = constraints.maxWidth;
          var height = constraints.maxHeight;

          var safeWidth = width - 2 * padding;
          var safeHeight = height - 2 * padding;

          var heightOfPrimaryCard = safeHeight;
          var widthOfPrimaryCard = heightOfPrimaryCard * (12.0 / 16.0);

          var primaryCardLeft = safeWidth - widthOfPrimaryCard;
          var horizontalInset = primaryCardLeft / 2;

          List<Widget> cardList = List();

          for (var i = 0; i < swipingCardImages.length; i++) {
            var delta = i - currentPage;
            bool isOnRight = delta > 0;

            var start = padding +
                max(
                    primaryCardLeft -
                        horizontalInset * -delta * (isOnRight ? 15 : 1),
                    0.0);

            var cardItem = Positioned.directional(
              top: padding + verticalInset * max(-delta, 0.0),
              bottom: padding + verticalInset * max(-delta, 0.0),
              start: start,
              textDirection: TextDirection.rtl,
              child: GestureDetector(
                onTap: () {
                  print('Tapped!');
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Material(
                    child: AspectRatio(
                      aspectRatio: (12.0 / 16.0),
                      child: Stack(
                        fit: StackFit.expand,
                        children: <Widget>[
                          Image.asset(swipingCardImages[i], fit: BoxFit.cover),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: AutoSizeText(
                                      swipingCardTitles[i],
                                      style: const TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 20.0,
                                        color: Colors.white,
                                      ),
                                      softWrap: false,
                                      maxLines: 1,
                                    ),
                                  ),
                                ),
                                // Padding(
                                //   padding: EdgeInsets.all(20.0),
                                //   child: GradientText(
                                //     swipingCardTitles[i],
                                //     shaderRect:
                                //         Rect.fromLTWH(0.0, 0.0, 50.0, 50.0),
                                //     gradient: Gradients.haze,
                                //     style: TextStyle(
                                //         fontWeight: FontWeight.w700,
                                //         fontSize: 20.0,
                                //         color: Colors.white),
                                //     softWrap: false,
                                //     overflow: TextOverflow.fade,
                                //     maxLines: 1,
                                //   ),
                                // ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            );
            cardList.add(cardItem);
          }
          return Stack(
            children: cardList,
          );
        },
      ),
    );
  }
}
