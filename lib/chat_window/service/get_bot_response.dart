import "package:fl_widgets/chat_window/model/bot_response.dart";

class GetBotResponse {
  static Future fetchResponse(String query) async {
    if (query.contains("hi") ||
        query.contains("hey") ||
        query.contains("hello")) {
      return BotResponse.fromJson(
          {"text": "Hey there! How may I help you today?"});
    } else if (query == "card1" || query == "card 1") {
      return GetBotResponse.getResponse("card-1");
    } else if (query == "card2" || query == "card 2") {
      return GetBotResponse.getResponse("card-2");
    } else if (query == "card3" || query == "card 3") {
      return GetBotResponse.getResponse("card-3");
    } else if (query == "card4" || query == "card 4") {
      return GetBotResponse.getResponse("card-4");
    } else if (query == "card5" || query == "card 5") {
      return GetBotResponse.getResponse("card-5");
    } else if (query == "card6" || query == "card 6") {
      return GetBotResponse.getResponse("card-6");
    } else if (query == "card7" || query == "card 7") {
      return GetBotResponse.getResponse("card-7");
    } else if (query == "card8" || query == "card 8") {
      return GetBotResponse.getResponse("card-8");
    } else if (query == "card9" || query == "card 9") {
      return GetBotResponse.getResponse("card-9");
    } else if (query == "card10" || query == "card 10") {
      return GetBotResponse.getResponse("card-10");
    } else if (query == "card11" || query == "card 11") {
      return GetBotResponse.getResponse("card-11");
    } else if (query == "card12" || query == "card 12") {
      return GetBotResponse.getResponse("card-12");
    } else if (query == "card13" || query == "card 13") {
      return GetBotResponse.getResponse("card-13");
    } else if (query == "card14" || query == "card 14") {
      return GetBotResponse.getResponse("card-14");
    } else if (query.contains("animated-card") ||
        query.contains("animated card")) {
      return GetBotResponse.getResponse("animated-card");
    } else if (query.contains("avatar-card") || query.contains("avatar card")) {
      return GetBotResponse.getResponse("avatar-card");
    } else if (query.contains("basic-card-2") ||
        query.contains("basic card 2")) {
      return GetBotResponse.getResponse("basic-card-2");
    } else if (query.contains("basic-card-3") ||
        query.contains("basic card 3")) {
      return GetBotResponse.getResponse("basic-card-3");
    } else if (query.contains("basic-card") || query.contains("basic card")) {
      return GetBotResponse.getResponse("basic-card");
    } else if (query.contains("basic-list-tile") ||
        query.contains("basic list tile")) {
      return GetBotResponse.getResponse("basic-list-tile");
    } else if (query.contains("basic-list-view") ||
        query.contains("basic list view")) {
      return GetBotResponse.getResponse("basic-list-view");
    } else if (query.contains("big-image-card") ||
        query.contains("big image card")) {
      return GetBotResponse.getResponse("big-image-card");
    } else if (query.contains("big-image-carousel") ||
        query.contains("big image carousel")) {
      return GetBotResponse.getResponse("big-image-carousel");
    } else if (query == "calendar-widget" || query == "calendar widget") {
      return GetBotResponse.getResponse("calendar-widget");
    } else if (query == "carousel" || query == "carousel") {
      return GetBotResponse.getResponse("carousel");
    } else if (query == "carousel2" || query == "carousel 2") {
      return GetBotResponse.getResponse("carousel2");
    } else if (query.contains("custom-list-tile") ||
        query.contains("custom list tile")) {
      return GetBotResponse.getResponse("custom-list-tile");
    } else if (query.contains("date-picker") || query.contains("date picker")) {
      return GetBotResponse.getResponse("date-picker");
    } else if (query.contains("datetime-picker") ||
        query.contains("datetime picker") ||
        query.contains("date time picker")) {
      return GetBotResponse.getResponse("datetime-picker");
    } else if (query.contains("details-card") ||
        query.contains("details card")) {
      return GetBotResponse.getResponse("details-card");
    } else if (query.contains("four-rect-cover") ||
        query.contains("four rect cover")) {
      return GetBotResponse.getResponse("four-rect-cover");
    } else if (query.contains("globe") || query.contains("globe")) {
      return GetBotResponse.getResponse("globe");
    } else if (query.contains("horizontal-list") ||
        query.contains("horizontal list")) {
      return GetBotResponse.getResponse("horizontal-list");
    } else if (query.contains("inbuilt-datetime-picker") ||
        query.contains("inbuilt datetime picker") ||
        query.contains("inbuilt date time picker")) {
      return GetBotResponse.getResponse("inbuilt-datetime-picker");
    } else if (query.contains("loader")) {
      return GetBotResponse.getResponse("loader");
    } else if (query.contains("main-card") || query.contains("main card")) {
      return GetBotResponse.getResponse("main-card");
    } else if (query.contains("profile-info-card") ||
        query.contains("profile info card")) {
      return GetBotResponse.getResponse("profile-info-card");
    } else if (query.contains("showcase-card") ||
        query.contains("showcase card")) {
      return GetBotResponse.getResponse("showcase-card");
    } else if (query.contains("tile-indicator-card") ||
        query.contains("tile indicator card")) {
      return GetBotResponse.getResponse("tile-indicator-card");
    } else if (query.contains("video-player") ||
        query.contains("video player")) {
      return GetBotResponse.getResponse("video-player");
    } else if (query.contains("attachment") ||
        query.contains("chatbot attachment")) {
      return GetBotResponse.getResponse("attachment");
    } else if (query.contains("chatbot-basic-card") ||
        query.contains("chatbot basic card")) {
      return GetBotResponse.getResponse("chatbot-basic-card");
    } else if (query.contains("chatbot-basic-carousel") ||
        query.contains("chatbot basic carousel")) {
      return GetBotResponse.getResponse("chatbot-basic-carousel");
    } else if (query.contains("button") || query.contains("chatbot button")) {
      return GetBotResponse.getResponse("button");
    } else if (query.contains("chatbot-card5") ||
        query.contains("chatbot card 5") ||
        query.contains("chatbot card5")) {
      return GetBotResponse.getResponse("chatbot-card5");
    } else if (query.contains("chatbot-card8") ||
        query.contains("chatbot card 8") ||
        query.contains("chatbot card8")) {
      return GetBotResponse.getResponse("chatbot-card8");
    } else if (query.contains("chatbot-card11") ||
        query.contains("chatbot card 11") ||
        query.contains("chatbot card11")) {
      return GetBotResponse.getResponse("chatbot-card11");
    } else if (query.contains("chatbot-card9") ||
        query.contains("chatbot card 9") ||
        query.contains("chatbot card9")) {
      return GetBotResponse.getResponse("chatbot-card9");
    } else if (query.contains("chatbot-card-plain") ||
        query.contains("chatbot card plain")) {
      return GetBotResponse.getResponse("chatbot-card-plain");
    } else if (query.contains("chatbot-card10") ||
        query.contains("chatbot card 10") ||
        query.contains("chatbot card10")) {
      return GetBotResponse.getResponse("chatbot-card10");
    } else if (query.contains("chatbot-card12") ||
        query.contains("chatbot card 12") ||
        query.contains("chatbot card12")) {
      return GetBotResponse.getResponse("chatbot-card12");
    } else if (query.contains("chatbot-cardtype1") ||
        query.contains("chatbot card type 1")) {
      return GetBotResponse.getResponse("chatbot-cardtype1");
    } else if (query.contains("chatbot-cardtype2") ||
        query.contains("chatbot card type 2")) {
      return GetBotResponse.getResponse("chatbot-cardtype2");
    } else if (query.contains("chatbot-cardtype3") ||
        query.contains("chatbot card type 3")) {
      return GetBotResponse.getResponse("chatbot-cardtype3");
    } else if (query.contains("chatbot-cardtype4") ||
        query.contains("chatbot card type 4")) {
      return GetBotResponse.getResponse("chatbot-cardtype4");
    } else if (query.contains("chatbot-carouselcard") ||
        query.contains("chatbot carousel card")) {
      return GetBotResponse.getResponse("chatbot-carousel-card");
    } else if (query.contains("confirmation-card") ||
        query.contains("confirmation card")) {
      return GetBotResponse.getResponse("confirmation-card");
    } else if (query.contains("default")) {
      return GetBotResponse.getResponse("default");
    } else if (query.contains("discount-card") ||
        query.contains("discount card")) {
      return GetBotResponse.getResponse("discount-card");
    } else if (query.contains("feedback-card") ||
        query.contains("feedback card")) {
      return GetBotResponse.getResponse("feedback-card");
    } else if (query.contains("status-carousel") ||
        query.contains("status carousel")) {
      return GetBotResponse.getResponse("status-carousel");
    } else if (query == "calendar widget fa" || query == "fa calendar widget") {
      return GetBotResponse.getResponse("calendar-widget-fa");
    } else if (query == "carousel 2 fa" || query == "carousel2 fa") {
      return GetBotResponse.getResponse("carousel2-fa");
    } else if (query == "liquid page") {
      return GetBotResponse.getResponse("liquid-page");
    } else if (query == "radial menu") {
      return GetBotResponse.getResponse("radial-menu");
    } else if (query == "swipe-view-carousel" ||
        query == "swipe view carousel") {
      return GetBotResponse.getResponse("swipe-view-carousel");
    } else if (query == "simple-bar-chart" || query == "simple bar chart") {
      return GetBotResponse.getResponse("simple-bar-chart");
    } else if (query == "donut-pie-chart" || query == "donut pie chart") {
      return GetBotResponse.getResponse("donut-pie-chart");
    } else if (query == "filled-pie-chart" || query == "filled pie chart") {
      return GetBotResponse.getResponse("filled-pie-chart");
    }
  }

  static getResponse(String contentType) {
    return BotResponse.fromJson({
      "contentType": contentType,
      "text": "Card",
      "description": null,
      "image": null,
      "speak": "Bot's speech response goes here",
      "video": null,
      "key": null,
      "icon": null
    });
  }
}
