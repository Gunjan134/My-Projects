import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Card10 extends StatelessWidget {
  final String title, description, bgImagePath, circularImagePath;

  Card10(
      this.title, this.description, this.bgImagePath, this.circularImagePath);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: height * 0.5,
      width: width * 0.75,
      child: Card(
        elevation: 3.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          children: <Widget>[
            Container(
              height: height * 0.488,
              child: Stack(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(bgImagePath),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  Positioned(
                    top: 5.0,
                    child: Container(
                      height: height * 0.15,
                      width: width * 0.75,
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            padding: const EdgeInsets.only(
                              bottom: 5.0,
                            ),
                            width: width * 0.6,
                            child: Text(
                              title,
                              style: const TextStyle(
                                fontSize: 18.0,
                                color: Colors.white,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(
                              bottom: 5.0,
                            ),
                            child: Text(
                              description,
                              style: const TextStyle(
                                color: Colors.white,
                              ),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    right: 12.0,
                    top: 12.0,
                    child: const Icon(
                      FontAwesomeIcons.solidHeart,
                      color: Colors.white,
                    ),
                  ),
                  Positioned(
                    right: 7.0,
                    bottom: 7.0,
                    child: Container(
                      width: height * 0.25,
                      height: height * 0.25,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(circularImagePath),
                          fit: BoxFit.cover,
                        ),
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.white,
                          width: 6.0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
