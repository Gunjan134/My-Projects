import 'package:fl_widgets/widgets/fa-widgets/swiping_view.dart';
import 'package:flutter/material.dart';

PageController controller =
    PageController(initialPage: swipingCardImages.length - 1);
var i = swipingCardImages.length - 1;

class SwipeViewCarousel extends StatefulWidget {
  @override
  _SwipeViewCarouselState createState() => _SwipeViewCarouselState();
}

class _SwipeViewCarouselState extends State<SwipeViewCarousel> {
  var currentPage = swipingCardImages.length - 1.0;
  @override
  Widget build(BuildContext context) {
    PageController controller =
        PageController(initialPage: swipingCardImages.length - 1);
    controller.addListener(
      () {
        setState(
          () {
            currentPage = controller.page;
          },
        );
      },
    );
    return Stack(
      children: <Widget>[
        SwipingView(currentPage),
        Positioned.fill(
          child: PageView.builder(
            itemCount: swipingCardImages.length,
            controller: controller,
            reverse: true,
            itemBuilder: (context, index) {
              return Container();
            },
          ),
        ),
      ],
    );
  }
}
