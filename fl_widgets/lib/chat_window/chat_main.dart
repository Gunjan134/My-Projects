import 'package:fl_widgets/chat_window/util/load_configuration.dart';
import 'package:flutter/material.dart';
import 'screens/chatbot_screen.dart';

class ChatMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: LoadConfiguration.loadConfig(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          String title = snapshot.data.title;
          return ChatbotScreen(title);
        } else {
          return Center(
            child: Container(
              child: Image(
                image: AssetImage('assets/images/chatbot_icon.png'),
                height: 150,
                width: 150,
              ),
            ),
          );
        }
      },
    );
  }
}
