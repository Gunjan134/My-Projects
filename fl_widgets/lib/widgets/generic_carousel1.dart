import 'package:fl_widgets/widgets/fa-widgets/page_transformer_fa.dart';

import 'package:flutter/material.dart';

class GenericCarousel1 extends StatelessWidget {
  final dynamic card;

  GenericCarousel1(this.card);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30.0),
      child: SizedBox.fromSize(
        size: Size.fromHeight(380.0),
        child: PageTransformer(
          pageViewBuilder: (context, visibilityResolver) {
            return PageView.builder(
              controller: PageController(viewportFraction: 0.85),
              itemCount: 6,
              itemBuilder: (context, index) {
                final item = card;
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

  final Widget item;
  final PageVisibility pageVisibility;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 22.0,
        horizontal: 8.0,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10.0),
        child: Material(
          child: item,
        ),
      ),
    );
  }
}
