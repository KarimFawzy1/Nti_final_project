import 'package:cloud_firestore/cloud_firestore.dart';

class MessageModelTest {
  final String message;
  final String id;

  MessageModelTest({required this.message, required this.id});
}


List<MessageModelTest> messages = [

  MessageModelTest(message: "Awesome, thanks for letting me know! Can't wait for my delivery. 🎉", id: "me"),
  MessageModelTest(message: "Hi!", id: "me"),
  MessageModelTest(message: "No problem at all! I'll be there in about 15 minutes.", id: "you"),
  MessageModelTest(message: "I'll text you when I arrive.", id: "you"),
  MessageModelTest(message: "Great! 😊", id: "me"),
  MessageModelTest(message: "Awesome, thanks for letting me know! Can't wait for my delivery. 🎉", id: "me"),
  MessageModelTest(message: "Awesome, thanks for letting me know! Can't wait for my delivery. 🎉", id: "me"),
  MessageModelTest(message: "Awesome, thanks for letting me know! Can't wait for my delivery. 🎉", id: "me"),
  MessageModelTest(message: "Awesome, thanks for letting me know! Can't wait for my delivery. 🎉", id: "me"),
  MessageModelTest(message: "Awesome, thanks for letting me know! Can't wait for my delivery. 🎉", id: "me"),
];







class MessageModel {
  final String text;
  final String senderId;
  final String senderName;
  final DateTime timestamp;
  final bool read;
  final String type; 
  final String? imageUrl;
  

  MessageModel({
    required this.text,
    required this.senderId,
    required this.senderName,
    required this.timestamp,
    required this.read,
    required this.type,
    this.imageUrl,
    
  });

  factory MessageModel.fromJson(String messageId, Map<String, dynamic> map) {
    return MessageModel(
      text: map['text'] ?? '',
      senderId: map['senderId'] ?? '',
      senderName: map['senderName'] ?? '',
      timestamp: (map['timestamp'] as Timestamp).toDate(),
      read: map['read'] ?? false,
      type: map['type'] ?? 'text',
      imageUrl: map['imageUrl'],
      
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'text': text,
      'senderId': senderId,
      'senderName': senderName,
      'timestamp': Timestamp.fromDate(timestamp),
      'read': read,
      'type': type,
      'imageUrl': imageUrl,
      
    };
  }

  
}