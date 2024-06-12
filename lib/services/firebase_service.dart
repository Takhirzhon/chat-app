import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/chat_model.dart';

class FirebaseService {
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  Stream<List<ChatModel>> getChats() {
    return _db.collection('chats').snapshots().map((snapshot) {
      return snapshot.docs.map((doc) => ChatModel.fromFirestore(doc)).toList();
    });
  }

  Future<void> sendMessage(String message, String userId) async {
    await _db.collection('chats').add({
      'text': message,
      'userId': userId,
      'timestamp': FieldValue.serverTimestamp(),
    });
  }

  Future<void> sendImage(String imageUrl, String userId) async {
    await _db.collection('chats').add({
      'imageUrl': imageUrl,
      'userId': userId,
      'timestamp': FieldValue.serverTimestamp(),
    });
  }
}
