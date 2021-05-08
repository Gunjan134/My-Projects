import 'package:flutter/material.dart';

class CircularIcon extends StatelessWidget {
  final String image;

  CircularIcon(this.image);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15.0),
        child: Image(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
      ),
      radius: 15.0,
    );
  }
}
