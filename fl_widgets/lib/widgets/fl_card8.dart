import 'package:flutter/material.dart';

class Card8 extends StatelessWidget {
  final String title,
      description,
      innerTitle,
      innerDescription,
      imagePath,
      textInCircle;

  Card8(this.title, this.description, this.innerTitle, this.innerDescription,
      this.imagePath, this.textInCircle);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: height * 0.47,
      width: width * 0.8,
      child: Stack(
        children: <Widget>[
          Container(
            height: height * 0.47,
            width: width * 0.8,
            child: Card(
              elevation: 3.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: Column(
                children: <Widget>[
                  Container(
                    height: height * 0.24,
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(imagePath),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(5.0),
                          topRight: Radius.circular(5.0),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: height * 0.2,
                    padding: const EdgeInsets.only(
                        top: 45.0, left: 8.0, right: 8.0, bottom: 8.0),
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: const EdgeInsets.only(top: 43.0),
                          child: Text(
                            title,
                            style: TextStyle(color: Colors.grey),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Container(
                          child: Text(
                            description,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Center(
            child: Container(
              height: height * 0.2,
              width: width * 0.55,
              child: Card(
                elevation: 3.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text(
                        innerTitle,
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 18.0,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text(
                        innerDescription,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            left: width * 0.06,
            top: height * 0.28,
            child: Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(10.0),
              width: 50.0,
              height: 50.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.black,
                boxShadow: [
                  BoxShadow(color: Colors.grey, blurRadius: 5.0),
                ],
              ),
              child: Text(
                textInCircle,
                style: TextStyle(color: Colors.white),
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
