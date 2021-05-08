import 'package:flutter/material.dart';

class AnimatedCard extends StatelessWidget {
  final String image, title, description;
  AnimatedCard(this.image, this.title, this.description);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(0.0),
          child: Container(
            margin: const EdgeInsets.all(0.0),
            height: 315.0,
            alignment: Alignment.center,
            child: Image.asset(
              image,
              height: 250.0,
              width: 200.0,
            ),
          ),
        ),
        Positioned(
          top: 230.0,
          child: Container(
            decoration: const BoxDecoration(color: Colors.white),
            margin: const EdgeInsets.only(top: 2.0),
            padding: const EdgeInsets.only(left: 10.0, right: 10.0),
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width,
            child: ListTile(
              title: Text(
                title,
                style: const TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 20.0),
                textAlign: TextAlign.center,
              ),
              subtitle: Container(
                height: 200.0,
                child: Text(
                  description,
                  style: const TextStyle(fontSize: 18.0),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
