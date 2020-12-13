import '../services/utils.dart';

class Profile {
  final String username;
  final String profileBio;
  final String profileImage;
  final String anthem1;
  final String anthem2;
  final String anthem3;
  final String artist1;
  final String artist2;
  final String artist3;

  Profile(
      {this.username,
      this.profileBio,
      this.profileImage,
      this.anthem1,
      this.anthem2,
      this.anthem3,
      this.artist1,
      this.artist2,
      this.artist3});

  factory Profile.fromJson(Map<String, dynamic> json) {
    return Profile(
      username: json['username'],
      profileBio: decodeString(json['profile_bio']),
      profileImage: json['profile_image'],
      anthem1: json['anthem1_id'],
      anthem2: json['anthem2_id'],
      anthem3: json['artist3_id'],
      artist1: json['artist1_id'],
      artist2: json['artist2_id'],
      artist3: json['artist3_id'],
    );
  }
}
