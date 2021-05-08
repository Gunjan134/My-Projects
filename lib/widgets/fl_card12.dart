import 'package:flutter/material.dart';

class Card12 extends StatefulWidget {
  final String headingText, tagText;

  Card12(this.headingText, this.tagText);

  @override
  _Card12State createState() => _Card12State(this.headingText, this.tagText);
}

class _Card12State extends State<Card12> {
  List<Data> items;
  final String headingText;
  final String tagText;

  _Card12State(this.headingText, this.tagText);

  @override
  void initState() {
    items = Data.getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: height * 0.35,
      width: width * 0.9,
      child: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 12.0),
            child: Card(
              elevation: 3.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(2.0),
              ),
              child: Container(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 5.0,
                      ),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        headingText,
                        style: const TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.w600,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Container(
                      height: height * 0.2,
                      width: width * 0.8,
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: SingleChildScrollView(
                        child: Column(
                          children: items
                              .map(
                                (item) => Container(
                                  child: Column(
                                    children: <Widget>[
                                      const SizedBox(
                                        height: 5.0,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Expanded(
                                            child: Container(
                                              width: width * 0.35,
                                              child: Text(
                                                item.key,
                                                style: const TextStyle(
                                                    color: Colors.grey),
                                                maxLines: 1,
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: Container(
                                              width: width * 0.35,
                                              alignment: Alignment.center,
                                              child: Text(
                                                item.value,
                                                maxLines: 1,
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 10.0,
                                      ),
                                    ],
                                  ),
                                ),
                              )
                              .toList(),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 0.0,
            right: 25.0,
            child: Container(
              alignment: Alignment.center,
              width: 120.0,
              height: 30.0,
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(40.0),
                color: Colors.blue,
              ),
              child: Text(
                tagText,
                style: const TextStyle(
                  color: Colors.white,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Data {
  String key;
  String value;
  Data({this.key, this.value});
  static List<Data> getData() {
    return <Data>[
      Data(key: "Label 1", value: "Value 1"),
      Data(key: "Label 2", value: "Value 2"),
      Data(key: "Label 3", value: "Value 3"),
      Data(key: "Label 4", value: "Value 4"),
      Data(key: "Label 5", value: "Value 5"),
      Data(key: "Label 6", value: "Value 6"),
    ];
  }
}
