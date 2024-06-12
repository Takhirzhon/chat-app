import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/chat_model.dart';

class FirebaseService {
  final CollectionReference chatCollection =
      FirebaseFirestore.instance.collection('chats');

  Stream<List<ChatModel>> getChats() {
    return chatCollection.snapshots().map((snapshot) {
      return snapshot.docs.map((doc) {
        return ChatModel.fromFirestore(doc);
      }).toList();
    });
  }
}
