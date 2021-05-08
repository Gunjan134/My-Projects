import 'dart:convert';
import 'package:fl_widgets/chat_window/model/app_config.dart';
import 'package:flutter/services.dart';

dynamic configData;

class LoadConfiguration {
  static Future loadConfig() async {
    var jsonString = await rootBundle.loadString('assets/config.json');
    final jsonResponse = json.decode(jsonString);
    configData = AppConfig.fromJson(jsonResponse);
    return configData;
  }

  static fetchConfigData() {
    return configData;
  }
}
