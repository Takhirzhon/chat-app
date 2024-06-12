import 'package:cloud_firestore/cloud_firestore.dart';

class ChatModel {
  final String name;
  final String lastMessage;
  final String time;
  final String initials;

  ChatModel({required this.name, required this.lastMessage, required this.time, required this.initials});

  factory ChatModel.fromFirestore(DocumentSnapshot doc) {
    Map data = doc.data() as Map;
    return ChatModel(
      name: data['name'] ?? '',
      lastMessage: data['lastMessage'] ?? '',
      time: data['time'] ?? '',
      initials: data['initials'] ?? '',
    );
  }
}
