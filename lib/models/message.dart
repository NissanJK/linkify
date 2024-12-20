import 'package:cloud_firestore/cloud_firestore.dart';

class Message {
  final String text;
  final Timestamp createdAt;

  Message({required this.text, required this.createdAt});

  // Factory method to create a Message object from a Firestore snapshot
  factory Message.fromSnapshot(DocumentSnapshot snapshot) {
    return Message(
      text: snapshot['text'] ?? '',
      createdAt: snapshot['createdAt'] ?? Timestamp.now(),
    );
  }

  // Convert Message object to a Map for Firestore
  Map<String, dynamic> toMap() {
    return {
      'text': text,
      'createdAt': createdAt,
    };
  }
}
