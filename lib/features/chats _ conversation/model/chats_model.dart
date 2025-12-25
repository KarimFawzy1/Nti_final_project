
import 'package:nti_final_project/features/chats%20_%20conversation/model/last_message_Model.dart';
import 'package:nti_final_project/features/chats%20_%20conversation/model/participant_data_model.dart';


class ChatModel {
  
  final List<String> participants;
  final Map<String, ParticipantData> participantsData;
  final LastMessage? lastMessage;
  

  ChatModel({
    required this.participants,
    required this.participantsData,
    this.lastMessage,
  });

  
  static String generateChatId(String userId1, String userId2) {
    final sortedIds = [userId1, userId2]..sort();
    return sortedIds.join('_');
  }

  factory ChatModel.fromJson(String chatId, Map<String, dynamic> map) {
    
    Map<String, ParticipantData> participantsDataMap = {};
    if (map['participantsData'] != null) {
      (map['participantsData'] as Map<String, dynamic>).forEach((key, value) {
        participantsDataMap[key] = ParticipantData.fromJson(value);
      });
    }

    return ChatModel(
      
      participants: List<String>.from(map['participants'] ?? []),
      participantsData: participantsDataMap,
      lastMessage: map['lastMessage'] != null
          ? LastMessage.fromJson(map['lastMessage'])
          : null,

    );
  }

  Map<String, dynamic> toJson() {
    
    Map<String, dynamic> participantsDataMap = {};
    participantsData.forEach((key, value) {
      participantsDataMap[key] = value.toJson();
    });

    return {
      'participants': participants,
      'participantsData': participantsDataMap,
      'lastMessage': lastMessage?.toJson(),
    };
  }

  
}




