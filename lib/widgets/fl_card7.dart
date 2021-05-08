import 'package:flutter/material.dart';

class Card7 extends StatelessWidget {
  final String title, description, image, textInCircle;

  Card7(this.title, this.description, this.image, this.textInCircle);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: height * 0.47,
      width: width * 0.8,
      child: Card(
        elevation: 3.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: Stack(
          children: <Widget>[
            Positioned(
              top: 10.0,
              child: Container(
                width: width * 0.8,
                padding: const EdgeInsets.all(5.0),
                alignment: Alignment.center,
                child: Text(
                  title,
                  style: const TextStyle(
                      fontSize: 18.0, fontWeight: FontWeight.w600),
                ),
              ),
            ),
            Positioned(
              bottom: 0.0,
              left: 0.0,
              child: Container(
                alignment: Alignment.bottomCenter,
                padding: const EdgeInsets.symmetric(
                    horizontal: 10.0, vertical: 15.0),
                height: height * 0.235,
                width: width * 0.4,
                decoration: const BoxDecoration(
                  color: Colors.blue,
                  borderRadius: const BorderRadiusDirectional.only(
                    bottomStart: Radius.circular(5.0),
                  ),
                ),
                child: Text(
                  description,
                  style: const TextStyle(color: Colors.white),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
            Positioned(
              top: height * 0.13,
              bottom: height * 0.13,
              right: 0.0,
              width: width * 0.68,
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(image),
                    fit: BoxFit.cover,
                  ),
                  color: Colors.black54,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(70.0),
                    bottomLeft: Radius.circular(70.0),
                  ),
                ),
              ),
            ),
            Positioned(
              left: width * 0.04,
              top: height * 0.18,
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
