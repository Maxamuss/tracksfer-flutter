import 'package:mobx/mobx.dart';
import 'package:tracksfer/models/Comment.dart';
import 'package:tracksfer/models/observable_models/logged_user.dart';
import 'package:tracksfer/services/utils.dart';
part 'observable_comment.g.dart';

class ObservableComment = _ObservableCommentBase with _$ObservableComment;

abstract class _ObservableCommentBase with Store implements Comment {
  @observable
  String id;
  @observable
  String trackId;
  @observable
  LoggedUser user;
  @observable
  DateTime createdAt;
  @observable
  String body;

  _ObservableCommentBase({
    this.id,
    this.trackId,
    this.user,
    this.createdAt,
    this.body,
  });

  ObservableComment factoryFromJson(Map<String, dynamic> json) {
    return ObservableComment(
      id: json['id'],
      trackId: json['track_id'],
      user: LoggedUser().fromJson(json['user']),
      createdAt: DateTime.parse(json['created_at']),
      body: decodeString(json['body']),
    );
  }

  @action
  fromJson(Map<String, dynamic> json) {
    id = json['id'];
    trackId = json['track_id'];
    user = LoggedUser().factoryFromJson(json['user']);
    createdAt = DateTime.parse(json['created_at']);
    body = decodeString(json['body']);
  }
}
