import 'package:flutter/material.dart';

class Card5 extends StatelessWidget {
  final String image, text;

  Card5(this.image, this.text);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: height * 0.4,
      width: width * 0.75,
      child: Card(
        elevation: 3.0,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(15.0)),
        ),
        child: Column(
          children: <Widget>[
            Container(
              height: height * 0.388,
              child: Stack(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(image),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(5.0),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0.0,
                    bottom: 35.0,
                    child: Container(
                      padding: EdgeInsets.only(
                          left: 10.0, top: 10.0, bottom: 10.0, right: 20.0),
                      alignment: Alignment.center,
                      color: Colors.black54,
                      child: Text(
                        text,
                        style: const TextStyle(color: Colors.white),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
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
