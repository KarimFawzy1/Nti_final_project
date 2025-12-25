import 'package:cloud_firestore/cloud_firestore.dart';

// Model for individual chat item in user's chat list
class UserChatItem {
  final String chatId;
  final String type; // direct or group
  final String lastMessage;
  final DateTime lastMessageTime;
  
  
  // For direct chats
  final String? otherUserId;
  final String? otherUserName;
  final String? otherUserPhoto;
  
  // For group chats
  final String? groupName;
  final String? groupPhoto;

  UserChatItem({
    required this.chatId,
    required this.type,
    required this.lastMessage,
    required this.lastMessageTime,
    this.otherUserId,
    this.otherUserName,
    this.otherUserPhoto,
    this.groupName,
    this.groupPhoto,
  });

  // Check if it's a direct chat
  bool get isDirect => type == 'direct';
  
  // Check if it's a group chat
  bool get isGroup => type == 'group';

  factory UserChatItem.fromJson(String chatId, Map<String, dynamic> json) {
    return UserChatItem(
      chatId: chatId,
      type: json['type'] ?? 'direct',
      lastMessage: json['lastMessage'] ?? '',
      lastMessageTime: (json['lastMessageTime'] as Timestamp).toDate(),
      otherUserId: json['otherUserId'],
      otherUserName: json['otherUserName'],
      otherUserPhoto: json['otherUserPhoto'],
      groupName: json['groupName'],
      groupPhoto: json['groupPhoto'],
    );
  }

  Map<String, dynamic> toJson() {
    final json = {
      'type': type,
      'lastMessage': lastMessage,
      'lastMessageTime': Timestamp.fromDate(lastMessageTime),
    };

    // Add direct chat fields
    if (isDirect) {
      json['otherUserId'] = otherUserId ?? "";
      json['otherUserName'] = otherUserName ?? "";
      json['otherUserPhoto'] = otherUserPhoto ?? "";
    }

    // Add group chat fields
    if (isGroup) {
      json['groupName'] = groupName ?? "";
      json['groupPhoto'] = groupPhoto ?? "";
    }

    return json;
  }

}

