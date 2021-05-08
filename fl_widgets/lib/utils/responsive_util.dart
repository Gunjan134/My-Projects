import 'package:flutter/cupertino.dart';

class ResponsiveUtil {
  static Map<String, Object> media(BuildContext context) {
    Map<String, Object> mediaMap = Map<String, Object>();
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    double shortestSide = MediaQuery.of(context).size.shortestSide;
    double longestSide = MediaQuery.of(context).size.longestSide;
    bool isFinite = MediaQuery.of(context).size.isFinite;
    Orientation orientation = MediaQuery.of(context).orientation;
    double textScaleFactor = MediaQuery.of(context).textScaleFactor;

    mediaMap.putIfAbsent("height", () => height);
    mediaMap.putIfAbsent("width", () => width);
    mediaMap.putIfAbsent("shortestSide", () => shortestSide);
    mediaMap.putIfAbsent("longestSide", () => longestSide);
    mediaMap.putIfAbsent("textScaleFactor", () => textScaleFactor);
    mediaMap.putIfAbsent("isFinite", () => isFinite);
    mediaMap.putIfAbsent("orientation", () => orientation);

    return mediaMap;
  }

  static bool isProtrait(BuildContext context) {
    return MediaQuery.of(context).orientation == Orientation.portrait;
  }

  static bool isLandscape(BuildContext context) {
    return MediaQuery.of(context).orientation == Orientation.landscape;
  }

  static bool isLargeScreen(BuildContext context) {
    return MediaQuery.of(context).size.width > 1200;
  }

  static bool isSmallScreen(BuildContext context) {
    return MediaQuery.of(context).size.width < 800;
  }

  static bool isMediumScreen(BuildContext context) {
    return MediaQuery.of(context).size.width > 800 &&
        MediaQuery.of(context).size.width < 1200;
  }
}
