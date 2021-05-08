import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;

class JSONUtil {
  static Future<String> loadAsset(String filePathAndName) async {
    return await rootBundle.loadString(filePathAndName);
  }
}
