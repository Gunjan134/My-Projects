import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

class Default extends StatelessWidget {
  final String text;
  Default(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          borderRadius: const BorderRadius.all(
            const Radius.circular(10.0),
          ),
          color: Colors.lightBlue),
      margin: const EdgeInsets.only(top: 5.0, bottom: 10.0, right: 40.0),
      padding: const EdgeInsets.all(8.0),
      child: Html(
        data: text,
        defaultTextStyle: TextStyle(color: Colors.white),
      ),
    );
  }
}
