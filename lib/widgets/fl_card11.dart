import 'package:flutter/material.dart';

class Card11 extends StatelessWidget {
  final String text, description, imagePath, textInCircle;

  Card11(this.text, this.description, this.imagePath, this.textInCircle);

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
        child: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                  height: height * 0.37,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(imagePath),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10.0),
                      topRight: Radius.circular(10.0),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: height * 0.12,
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          alignment: Alignment.centerLeft,
                          width: width * 0.6,
                          padding: const EdgeInsets.only(bottom: 5.0),
                          child: Text(
                            text,
                            style: const TextStyle(fontSize: 16.0),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Container(
                          child: Text(
                            description,
                            style: const TextStyle(fontSize: 12.0),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              bottom: height * 0.085,
              right: 10,
              child: Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10.0),
                width: 50.0,
                height: 50.0,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                  boxShadow: [
                    const BoxShadow(color: Colors.grey, blurRadius: 5.0),
                  ],
                ),
                child: Text(
                  textInCircle,
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
