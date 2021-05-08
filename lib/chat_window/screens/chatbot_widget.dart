import 'package:fl_widgets/chat_window/util/load_configuration.dart';
import 'package:fl_widgets/chat_window/screens/chat_message_widget.dart';
import 'package:fl_widgets/chat_window/service/get_bot_response.dart';
import 'package:fl_widgets/common/common_navigator.dart';
import 'package:fl_widgets/pages/bottom_nav_demo.dart';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

String userName;
String botName;

const mnuClear = 'Clear Chat';

class ChatbotWidget extends StatefulWidget {
  final String title;

  ChatbotWidget({Key key, this.title}) : super(key: key);

  @override
  ChatbotState createState() => ChatbotState();
}

class ChatbotState extends State<ChatbotWidget> {
  List<ChatMessageWidget> _messages = <ChatMessageWidget>[];
  final TextEditingController _textController = TextEditingController();

  bool _speaker = true;

  @override
  void initState() {
    // getMainList().then((dynamic msgCache) {
    //   setState(() {
    //     _messages = msgCache;
    //   });
    // }).catchError((error) {
    //   print(error.toString());
    // });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            CommonNavigator.navigateTo(context, BottomNavDemo());
          },
        ),
        title: Text(widget.title),
        centerTitle: true,
        actions: <Widget>[
          buildMenuItems(),
        ],
      ),
      body: Column(
        children: <Widget>[
          Flexible(
            child: ListView.builder(
              padding: const EdgeInsets.all(8.0),
              reverse: true,
              itemBuilder: (_, int index) => _messages[index],
              itemCount: _messages.length,
            ),
          ),
          const Divider(height: 1.0),
          Container(
            decoration: BoxDecoration(
              color: Theme.of(context).cardColor,
            ),
            child: _buildTextComposer(),
          ),
        ],
      ),
    );
  }

  buildMenuItems() {
    return buildMenu(['Clear Chat']);
  }

  buildMenu(List<String> menuItems) {
    return PopupMenuButton<String>(
      onSelected: select,
      itemBuilder: (BuildContext context) {
        return menuItems.map((String choice) {
          return PopupMenuItem<String>(
            value: choice,
            child: Text(choice),
          );
        }).toList();
      },
    );
  }

  Widget _buildTextComposer() {
    return IconTheme(
      data: IconThemeData(color: Theme.of(context).accentColor),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          children: <Widget>[
            Flexible(
              child: TextField(
                controller: _textController,
                onSubmitted: handleSubmitted,
                decoration:
                    InputDecoration.collapsed(hintText: "Send a message"),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 1.0),
              child: IconButton(
                icon: Icon(Icons.send),
                onPressed: () {
                  if (_textController.text != '')
                    return handleSubmitted(_textController.text);
                  return null;
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  void toggleSpeaker() {
    setState(() {
      if (_speaker) {
        _speaker = false;
      } else {
        _speaker = true;
      }
    });
  }

  Future handleSubmitted(String text) async {
    try {
      dynamic appConfigObj = await LoadConfiguration.fetchConfigData();
      userName = appConfigObj.userName;
      _textController.clear();
      ChatMessageWidget message = ChatMessageWidget(
        text: text,
        name: userName,
        type: true,
      );
      setState(() {
        _messages.insert(0, message);
      });
      setMainList();
      response(text.toLowerCase());
    } catch (error) {
      print(error.toString());
    }
  }

  void response(query) async {
    try {
      _textController.clear();
      dynamic responseObj = await GetBotResponse.fetchResponse(query);
      dynamic appConfigObj = await LoadConfiguration.fetchConfigData();
      botName = appConfigObj.botName;
      ChatMessageWidget responseMessage;

      if (responseObj != null) {
        if (responseObj.text != null) {
          responseMessage = ChatMessageWidget(
            text: responseObj.text,
            name: botName,
            type: false,
            content: responseObj,
            // configData: appConfigObj,
          );
        } else if (responseObj.speak != null) {
          responseMessage = ChatMessageWidget(
            text: responseObj.speak,
            name: botName,
            type: false,
            content: responseObj,
            configData: appConfigObj,
          );
        }
      } else {
        responseMessage = ChatMessageWidget(
          text: 'Some issue with the request',
          name: botName,
          type: false,
          configData: appConfigObj,
        );
      }
      setState(() {
        _messages.insert(0, responseMessage);
      });
      setMainList();
    } catch (error) {
      ChatMessageWidget responseMessage;
      responseMessage = ChatMessageWidget(
        text: 'Some issue with the request',
        name: botName,
        type: false,
      );
      setState(() {
        _messages.insert(0, responseMessage);
      });
      setMainList();
      print(error.toString());
    }
  }

  Future setMainList() async {
    try {
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      List<String> testList;

      dynamic testMsg;
      if (_messages[0].name == botName) {
        testMsg = _messages[0].text;
        testList = ["Infy Chatbot", testMsg];
      } else if (_messages[0].name == userName) {
        testMsg = _messages[0].text;
        testList = ["Me", testMsg];
      }

      await prefs.setStringList((_messages.length - 1).toString(), testList);
    } catch (error) {
      print(error.toString());
    }
  }

  Future getMainList() async {
    try {
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      dynamic appConfigObj = await LoadConfiguration.fetchConfigData();
      userName = appConfigObj.userName;
      botName = appConfigObj.botName;

      dynamic keys = prefs.getKeys();

      List<int> tempKeys = List<int>();
      for (dynamic key in keys) {
        key = int.parse(key);
        tempKeys.add(key);
      }
      tempKeys.sort((b, a) => a.compareTo(b));
      dynamic cmsg = List<ChatMessageWidget>();

      for (int key in tempKeys) {
        List content = prefs.getStringList(key.toString());
        if (content[0] == "Me") {
          cmsg.add(ChatMessageWidget(
            text: content[1],
            name: userName,
            type: true,
          ));
        } else {
          cmsg.add(
            ChatMessageWidget(
              text: "Hi",
              name: botName,
              type: false,
            ),
          );
        }
      }
      return cmsg;
    } catch (error) {
      List<ChatMessageWidget> errorList;
      errorList.add(ChatMessageWidget(
        text: "Some technical error occured! Failed to load messages.",
        name: botName,
        type: false,
      ));
      print(error);
      return errorList;
    }
  }

  select(String value) {
    switch (value) {
      case mnuClear:
        clearConfimation();
        break;
    }
  }

  clearConfimation() {
    AlertDialog alertDialog = AlertDialog(
      title: Text("Clear chat"),
      content: Text("Do you want to clear the chat?"),
      actions: <Widget>[
        FlatButton(
          child: Text(
            "Yes",
            style: TextStyle(fontSize: 15.0),
          ),
          onPressed: () {
            clearChat();
          },
        ),
        FlatButton(
          child: Text(
            "No",
            style: TextStyle(fontSize: 15.0),
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ],
    );
    return showDialog(context: context, builder: (_) => alertDialog);
  }

  void clearChat() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    dynamic cleared = await prefs.clear();
    if (cleared) {
      setState(() {
        _messages.removeRange(0, _messages.length);
      });
      AlertDialog alertDialog = AlertDialog(
        title: Text("Clear chat"),
        content: Text("The chat has been cleared"),
      );
      showDialog(context: context, builder: (_) => alertDialog);
      print("----------------chat cleared-------------");
    } else {
      AlertDialog alertDialog = AlertDialog(
        title: Text("Sorry"),
        content: Text("Some problem has occured. Please try again"),
      );
      showDialog(context: context, builder: (_) => alertDialog);
      print(
          "------------Problem deleting chat------Clear chat failed--------------");
    }
  }
}
