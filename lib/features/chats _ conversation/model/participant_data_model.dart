class ParticipantData {
  final String name;
  final String? photoURL;

  ParticipantData({
    required this.name,
    this.photoURL,
  });

  factory ParticipantData.fromJson(Map<String, dynamic> json) {
    return ParticipantData(
      name: json['name'] ?? '',
      photoURL: json['photoURL'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'photoURL': photoURL,
    };
  }
}
