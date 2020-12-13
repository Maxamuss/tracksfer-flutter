import '../services/utils.dart';

class User {
  final String username;
  final String profileBio;
  final String profileImage;

  User({
    this.username,
    this.profileBio,
    this.profileImage,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      username: json['username'],
      profileBio: decodeString(json['profile_bio']),
      profileImage: json['profile_image'],
    );
  }
}
