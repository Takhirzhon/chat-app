import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../services/firebase_service.dart';
import '../widgets/chat_item.dart';
import '../widgets/search_bar.dart';
import '../models/chat_model.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Чаты'),
      ),
      body: Column(
        children: [
            
          Expanded(
            child: StreamProvider<List<ChatModel>>.value(
              value: FirebaseService().getChats(),
              initialData: [],
              child: ChatList(),
            ),
          ),
        ],
      ),
    );
  }
}

class ChatList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var chats = Provider.of<List<ChatModel>>(context);
    return ListView.builder(
      itemCount: chats.length,
      itemBuilder: (context, index) {
        return ChatItem(chat: chats[index]);
      },
    );
  }
}
