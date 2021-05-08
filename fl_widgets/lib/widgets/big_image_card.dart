import 'package:fl_widgets/themes/text_style.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BigImageCard extends StatelessWidget {
  final String imageName;

  BigImageCard(this.imageName);

  @override
  Widget build(BuildContext context) {
    Orientation orientation = MediaQuery.of(context).orientation;
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Center(
      child: SingleChildScrollView(
        child: Container(
          height: orientation == Orientation.landscape
              ? width * 0.55
              : height * 0.45,
          width: orientation == Orientation.landscape
              ? height * 0.65
              : width * 0.65,
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Container(
                  padding: const EdgeInsets.only(left: 10),
                  child: ListTile(
                    contentPadding: const EdgeInsets.all(0),
                    leading: Icon(FontAwesomeIcons.mobileAlt,
                        color: Colors.lightBlue.shade600),
                    title: const Align(
                      alignment: Alignment.centerLeft,
                      child: const Text(
                        "A Big Image Card",
                        overflow: TextOverflow.fade,
                        style: AppTextStyle.studyTitle,
                      ),
                    ),
                    dense: true,
                    trailing: const Icon(Icons.more_vert),
                  ),
                ),
              ),
              Expanded(
                flex: 5,
                child: Container(
                  color: Colors.lightBlue.shade900,
                  margin: EdgeInsets.only(top: 5),
                  child: Image.asset('assets/pexels/$imageName.jpeg',
                      fit: BoxFit.cover),
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: <Widget>[
                      Expanded(
                        flex: 2,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Expanded(
                              flex: 2,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Icon(
                                    FontAwesomeIcons.solidHeart,
                                    size: 20,
                                    color: Colors.red.shade600,
                                  ),
                                  Icon(
                                    Icons.chat_bubble_outline,
                                    size: 20,
                                    color: Colors.green.shade600,
                                  ),
                                  Icon(
                                    Icons.send,
                                    size: 20,
                                    color: Colors.blue.shade600,
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              flex: 3,
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: Icon(
                                  Icons.bookmark,
                                  size: 25,
                                  color: Colors.lightBlue.shade600,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: const Text(
                                "1.5 M Likes!",
                                overflow: TextOverflow.fade,
                                style: AppTextStyle.settingsFooter,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 4,
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              child: Container(
                                child: const Text(
                                  "Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.",
                                  overflow: TextOverflow.fade,
                                  style: const TextStyle(
                                    fontSize: 13,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w400,
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
