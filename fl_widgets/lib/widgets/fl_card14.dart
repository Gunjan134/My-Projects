import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Card14 extends StatelessWidget {
  final String title, icon1, text1, icon2, text2, icon3, text3, icon4, text4;

  Card14(this.title, this.icon1, this.text1, this.icon2, this.text2, this.icon3,
      this.text3, this.icon4, this.text4);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: height * 0.42,
      width: width * 0.8,
      child: Card(
        elevation: 3.0,
        child: Container(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              Container(
                height: height * 0.05,
                width: width * 0.75,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        alignment: Alignment.centerLeft,
                        width: width * 0.6,
                        child: Text(
                          title,
                          style: const TextStyle(
                            fontSize: 15.0,
                            color: Colors.grey,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        boxShadow: [
                          const BoxShadow(
                            color: Colors.grey,
                            blurRadius: 5,
                          ),
                        ],
                        shape: BoxShape.circle,
                      ),
                      child: ClipOval(
                        child: Material(
                          color: Colors.white,
                          child: InkWell(
                            splashColor: Colors.blue,
                            child: const SizedBox(
                              width: 30,
                              height: 30,
                              child: const Icon(
                                Icons.phone,
                                size: 18.0,
                              ),
                            ),
                            onTap: () {},
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: height * 0.3,
                padding: const EdgeInsets.all(5.0),
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      left: 0,
                      top: 10,
                      child: Container(
                        height: height * 0.12,
                        width: width * 0.32,
                        child: Card(
                          elevation: 3.0,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              const Icon(FontAwesomeIcons.addressCard),
                              Text(
                                text1,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      right: 0,
                      top: 10,
                      child: Container(
                        height: height * 0.12,
                        width: width * 0.32,
                        child: Card(
                          elevation: 3.0,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Icon(FontAwesomeIcons.globe),
                              Text(
                                text2,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 0,
                      bottom: 10,
                      child: Container(
                        height: height * 0.12,
                        width: width * 0.32,
                        child: Card(
                          elevation: 3.0,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Icon(FontAwesomeIcons.piggyBank),
                              Text(
                                text3,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      right: 0,
                      bottom: 10,
                      child: Container(
                        height: height * 0.12,
                        width: width * 0.32,
                        child: Card(
                          elevation: 3.0,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Icon(FontAwesomeIcons.coins),
                              Text(
                                text4,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
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
    );
  }
}
