class BotResponse {
  dynamic contentType;
  dynamic text;
  dynamic description;
  dynamic image;
  dynamic speak;
  dynamic video;
  dynamic key;
  dynamic elements;
  dynamic icon;
  dynamic additionalParams;
  dynamic psvVideo;

  BotResponse(
      {this.contentType,
      this.text,
      this.description,
      this.image,
      this.speak,
      this.video,
      this.key,
      this.elements,
      this.icon,
      this.additionalParams,
      this.psvVideo});

  factory BotResponse.fromJson(Map<dynamic, dynamic> jsonObj) {
    print("rsponse constructor");
    return BotResponse(
        contentType: jsonObj['contentType'],
        text: jsonObj['text'],
        description: jsonObj['description'],
        image: jsonObj['image'],
        speak: jsonObj['speak'],
        video: jsonObj['video'],
        key: jsonObj['key'],
        elements: jsonObj['elements'],
        icon: jsonObj['icon'],
        additionalParams: jsonObj['additionalParams'],
        psvVideo: jsonObj['psvVideo']);
  }

  Map<String, dynamic> toJson() => {
        'contentType': contentType,
        'text': text,
        'description': description,
        'image': image,
        'speak': speak,
        'video': video,
        'key': key,
        'elements': elements,
        'icon': icon,
        'additionalParams': additionalParams,
        'psvVideo': psvVideo
      };
}
