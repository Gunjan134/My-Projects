import 'package:flutter/material.dart';
import './page_transformer_fa.dart';
import 'package:gradient_widgets/gradient_widgets.dart';

class ParallaxCardItem {
  ParallaxCardItem({
    this.title,
    this.body,
    this.imagePath,
  });

  final String title;
  final String body;
  final String imagePath;
}

final parallaxCardItemsList = <ParallaxCardItem>[
  ParallaxCardItem(
    title: 'Card1',
    body: 'Description for card 1',
    imagePath: 'assets/images/1.jpg',
  ),
  ParallaxCardItem(
    title: 'Card2',
    body: 'Description for card 2',
    imagePath: 'assets/images/2.jpg',
  ),
  ParallaxCardItem(
    title: 'Card3',
    body: 'Description for card 3',
    imagePath: 'assets/images/3.jpg',
  ),
  ParallaxCardItem(
    title: 'Card4',
    body: 'Description for card 4',
    imagePath: 'assets/images/4.jpg',
  ),
  ParallaxCardItem(
    title: 'Card5',
    body: 'Description for card 5',
    imagePath: 'assets/images/5.jpg',
  ),
];

class Carousel2Fa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30.0),
      child: SizedBox.fromSize(
        size: Size.fromHeight(450.0),
        child: PageTransformer(
          pageViewBuilder: (context, visibilityResolver) {
            return PageView.builder(
              controller: PageController(viewportFraction: 0.85),
              itemCount: parallaxCardItemsList.length,
              itemBuilder: (context, index) {
                final item = parallaxCardItemsList[index];
                final pageVisibility =
                    visibilityResolver.resolvePageVisibility(index);

                return ParallaxCards(
                  item: item,
                  pageVisibility: pageVisibility,
                );
              },
            );
          },
        ),
      ),
    );
  }
}

class ParallaxCards extends StatelessWidget {
  ParallaxCards({
    @required this.item,
    @required this.pageVisibility,
  });

  final ParallaxCardItem item;
  final PageVisibility pageVisibility;

  Widget _applyTextEffects({
    @required double translationFactor,
    @required Widget child,
  }) {
    final double xTranslation = pageVisibility.pagePosition * translationFactor;

    return Opacity(
      opacity: pageVisibility.visibleFraction,
      child: Transform(
        alignment: FractionalOffset.topLeft,
        transform: Matrix4.translationValues(
          xTranslation,
          0.0,
          0.0,
        ),
        child: child,
      ),
    );
  }

  _buildTextContainer(BuildContext context) {
    var categoryText = _applyTextEffects(
      translationFactor: 300.0,
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: GradientText(
          item.body,
          shaderRect: Rect.fromLTWH(0.0, 0.0, 50.0, 50.0),
          gradient: const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xfff20BDFF),
              Color(0xffA5FECB),
            ],
          ),
          style: const TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 16.0,
            color: Color(0xfffafafa),
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );

    var titleText = _applyTextEffects(
      translationFactor: 200.0,
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: GradientText(
          item.title,
          shaderRect: const Rect.fromLTWH(0.0, 0.0, 50.0, 50.0),
          gradient: Gradients.haze,
          style: const TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 20.0,
            color: Color(0xfffafafa),
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );

    return Positioned(
      bottom: 50.0,
      left: 10.0,
      right: 10.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          categoryText,
          titleText,
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var image = Image.asset(
      item.imagePath,
      fit: BoxFit.cover,
      alignment: FractionalOffset(
        0.5 + (pageVisibility.pagePosition / 3),
        0.5,
      ),
    );

    var imageOverlayGradient = DecoratedBox(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.transparent,
            Color(0xff212121),
          ],
        ),
      ),
    );

    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 22.0,
        horizontal: 8.0,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10.0),
        child: Material(
          child: Stack(
            fit: StackFit.expand,
            children: [
              image,
              imageOverlayGradient,
              _buildTextContainer(context),
            ],
          ),
        ),
      ),
    );
  }
}
