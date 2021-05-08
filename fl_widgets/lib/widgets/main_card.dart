import 'package:flutter/material.dart';

import '../common/common_navigator.dart';
import './video_player.dart';

class MainCard extends StatelessWidget {
  final String title,
      subtitle,
      description,
      btnText,
      bgImagePath,
      navigateToURL;

  MainCard(this.title, this.subtitle, this.description, this.btnText,
      this.bgImagePath, this.navigateToURL);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.75,
      child: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: ExactAssetImage(this.bgImagePath),
                fit: BoxFit.cover,
              ),
            ),
          ),
          AnimatedPositioned(
            duration: const Duration(seconds: 1),
            bottom: 150,
            left: 5.0,
            right: 5.0,
            child: Container(
              padding: const EdgeInsets.all(10.0),
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(color: Colors.black54),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    this.title,
                    style: const TextStyle(
                        fontFamily: 'Open Sans',
                        fontSize: 32,
                        letterSpacing: 0.4,
                        color: Colors.white),
                    textAlign: TextAlign.left,
                  ),
                  Divider(
                    color: Theme.of(context).highlightColor,
                    height: 10.0,
                    thickness: 1.5,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Text(
                      this.subtitle,
                      style:
                          const TextStyle(fontSize: 20.0, color: Colors.white),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Text(
                      this.description,
                      style:
                          const TextStyle(fontSize: 12.0, color: Colors.white),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 100.0,
            left: 10.0,
            child: RaisedButton(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              color: Theme.of(context).highlightColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              onPressed: () {
                CommonNavigator.navigateTo(
                    context, VideoPlayerScreen(null, this.navigateToURL));
              },
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(right: 5.0),
                    child: const Icon(
                      Icons.play_circle_outline,
                      size: 28.0,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    this.btnText,
                    style: const TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
