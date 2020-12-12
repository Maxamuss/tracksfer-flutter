import '../services/utils.dart';
import 'User.dart';

// Model for CommentSerializer
class Comment {
  final String id;
  final String trackId;
  final User user;
  final DateTime createdAt;
  final String body;

  Comment({
    this.id,
    this.trackId,
    this.user,
    this.createdAt,
    this.body
  });

  factory Comment.fromJson(Map<String, dynamic> json) {
    return Comment(
      id: json['id'],
      trackId: json['track_id'],
      user: User.fromJson(json['user']),
      createdAt: json['created_at'],
      body: decodeString(json['body']),
    );
  }

}