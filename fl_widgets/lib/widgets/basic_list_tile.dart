import 'package:fl_widgets/themes/app_theme_data.dart';
import 'package:fl_widgets/themes/text_style.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BasicListTile extends StatelessWidget {
  final String title, subtitle, imageName, something;

  BasicListTile(this.title, this.subtitle, this.imageName, this.something);

  @override
  Widget build(BuildContext context) {
    return getTileCard(context, title, subtitle, imageName, something);
  }

  Widget getTileCard(BuildContext context, String title, String subtitle,
      String imageName, String something) {
    Orientation orientation = MediaQuery.of(context).orientation;
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Center(
      child: Container(
        padding: const EdgeInsets.all(2),
        child: Row(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Container(
                height: orientation == Orientation.landscape
                    ? width * .12
                    : height * .12,
                color: Colors.lightBlue.shade900,
                padding: const EdgeInsets.all(0),
                child: Image.asset(
                  'assets/pexels/$imageName.jpeg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                height: 90,
                padding: const EdgeInsets.fromLTRB(10, 0, 5, 0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            width: MediaQuery.of(context).size.width * 0.40,
                            padding: const EdgeInsets.all(1),
                            child: Text(
                              title,
                              overflow: TextOverflow.ellipsis,
                              style: AppTextStyle.title,
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(1),
                            child: Text(
                              something,
                              overflow: TextOverflow.ellipsis,
                              style: AppTextStyle.title,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            height: 80,
                            width: MediaQuery.of(context).size.width * 0.40,
                            padding: const EdgeInsets.all(2),
                            child: Text(
                              subtitle,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: Colors.grey.shade500,
                                fontWeight: FontWeight.w500,
                                fontSize: 12,
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(1),
                            child: Text(
                              "[45$imageName]",
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: Colors.grey.shade500,
                                fontWeight: FontWeight.w500,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 1),
                      decoration: AppThemeData.bottomBorder,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Expanded(
                          flex: 2,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Icon(
                                FontAwesomeIcons.futbol,
                                size: 18,
                                color: Colors.grey.shade400,
                              ),
                              Icon(
                                FontAwesomeIcons.tableTennis,
                                size: 18,
                                color: Colors.grey.shade400,
                              ),
                              Icon(
                                FontAwesomeIcons.dumbbell,
                                size: 18,
                                color: Colors.grey.shade400,
                              ),
                              Icon(
                                FontAwesomeIcons.swimmer,
                                size: 18,
                                color: Colors.grey.shade400,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          flex: 1,
                          child: FlatButton(
                            onPressed: () {},
                            padding: const EdgeInsets.all(0),
                            child: const Text(
                              "BOOK",
                              overflow: TextOverflow.fade,
                              style: const TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget getPageHeader(String title, String subtitle, IconData icondata) {
    return Container(
      child: ListTile(
        isThreeLine: true,
        dense: false,
        contentPadding: const EdgeInsets.all(0),
        leading: Container(
          child: Image.asset('assets/images/2.jpg', fit: BoxFit.cover),
        ),
        title: Text(
          title,
          style: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              subtitle,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 13,
              ),
            ),
            const Divider(
              color: Colors.grey,
            ),
            ButtonBar(
              alignment: MainAxisAlignment.start,
              layoutBehavior: ButtonBarLayoutBehavior.constrained,
              buttonPadding: const EdgeInsets.all(0),
              buttonMinWidth: 10,
              children: <Widget>[
                FlatButton(
                  onPressed: () {},
                  child: const Icon(
                    Icons.call,
                    color: Colors.grey,
                    size: 20,
                  ),
                ),
                FlatButton(
                  onPressed: () {},
                  child: const Icon(
                    Icons.card_giftcard,
                    color: Colors.grey,
                    size: 20,
                  ),
                ),
                FlatButton(
                  onPressed: () {},
                  child: const Icon(
                    Icons.chat,
                    color: Colors.grey,
                    size: 20,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
