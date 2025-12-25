
class UserModel {
  final String uid;
  final String name;
  final String email;
  final String? photoURL;
  final String status; 

  

  UserModel({
    required this.uid,
    required this.name,
    required this.email,
    this.photoURL,
    required this.status,
  });

  
  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      uid: json['uid'] ?? '',
      name: json['name'] ?? '',
      email: json['email'] ?? '',
      photoURL: json['photoURL'],
      status: json['status'] ?? 'offline',
    );
  }


  Map<String, dynamic> toJson() {
    return {
      'uid': uid,
      'name': name,
      'email': email,
      'photoURL': photoURL,
      'status': status,
    };
  }
}