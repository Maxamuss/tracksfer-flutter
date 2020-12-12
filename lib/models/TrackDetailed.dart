import 'Comment.dart';
import 'Group.dart';
import 'User.dart';

// Model for TrackSerializer
class Track {
  final String id;
  final Group group;
  final String spotifyId;
  final User user;
  final DateTime createdAt;
  final int score;
  final List<Comment> comments;

  Track({
      this.id,
      this.group,
      this.spotifyId,
      this.user,
      this.createdAt,
      this.score,
      this.comments
  });

  factory Track.fromJson(Map<String, dynamic> json) {
    Iterable commentsJson = json['comments'];
    List<Comment> comments = commentsJson.map((model) => Comment.fromJson(model)).toList();

    return Track(
      id: json['id'],
      group: json['group'],
      spotifyId: json['spotify_id'],
      user: User.fromJson(json['user']),
      createdAt: json['created_at'],
      score: json['score'],
      comments: comments
    );
  }
}