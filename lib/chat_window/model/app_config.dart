class AppConfig {
  dynamic appName;
  dynamic url;
  dynamic components;
  dynamic userId;
  dynamic mode;
  dynamic userName;
  dynamic botName;
  dynamic title;
  dynamic channel;

  AppConfig(
      {this.appName,
      this.url,
      this.components,
      this.userId,
      this.mode,
      this.userName,
      this.botName,
      this.title,
      this.channel});

  factory AppConfig.fromJson(Map<dynamic, dynamic> jsonObj) {
    return AppConfig(
        appName: jsonObj['appName'],
        url: jsonObj['url'],
        components: jsonObj['components'],
        userId: jsonObj['userId'],
        mode: jsonObj['mode'],
        userName: jsonObj['userName'],
        botName: jsonObj['botName'],
        title: jsonObj['title'],
        channel: jsonObj['channel']);
  }
}
