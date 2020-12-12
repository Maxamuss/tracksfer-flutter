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

  Track({
      this.id,
      this.group,
      this.spotifyId,
      this.user,
      this.createdAt,
      this.score
  });

  factory Track.fromJson(Map<String, dynamic> json) {
    return Track(
      id: json['id'],
      group: json['group'],
      spotifyId: json['spotify_id'],
      user: User.fromJson(json['user']),
      createdAt: json['created_at'],
      score: json['score']
    );
  }
}