import 'package:fl_widgets/chat_window/screens/chatbot_widget.dart';
import 'package:flutter/material.dart';

class ChatbotScreen extends StatelessWidget {
  final String botTitle;

  ChatbotScreen(this.botTitle);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: botTitle,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ChatbotWidget(title: botTitle),
      debugShowCheckedModeBanner: false,
    );
  }
}
