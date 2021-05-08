import 'package:flutter/material.dart';

const data = [
  {"icon": "place", "text": "Option 1"},
  {"icon": "portrait", "text": "Option 2"},
  {"icon": "place", "text": "Option 3"},
  {"icon": "portrait", "text": "Option 4"},
];

class Card3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: height * 0.5,
      width: width * 0.8,
      child: Card(
        elevation: 3.0,
        child: Column(
          children: <Widget>[
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Greetings,',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    'One line description or text',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
            Container(
              height: height * 0.35,
              child: ListView.separated(
                itemCount: 4,
                padding: EdgeInsets.only(left: 16.0),
                separatorBuilder: (context, index) => SizedBox(
                  height: 10.0,
                ),
                itemBuilder: (context, index) => Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10.0),
                      bottomLeft: Radius.circular(10.0),
                    ),
                    color: Colors.blue,
                  ),
                  child: ListTile(
                    dense: true,
                    title: Row(
                      children: <Widget>[
                        Icon(
                          Icons.location_on,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        Flexible(
                          child: Text(
                            'Option 1',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
