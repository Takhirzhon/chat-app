import 'package:flutter/material.dart';
import '../models/chat_model.dart';

class ChatItem extends StatelessWidget {
  final ChatModel chat;

  ChatItem({required this.chat});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.blue,
        child: Text(chat.initials, style: TextStyle(color: Colors.white)),
      ),
      title: Text(chat.name),
      subtitle: Text(chat.lastMessage),
      trailing: Text(chat.time),
    );
  }
}
