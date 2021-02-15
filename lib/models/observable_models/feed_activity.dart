import 'package:mobx/mobx.dart';
import 'package:tracksfer/models/observable_models/logged_user.dart';
import 'package:tracksfer/models/observable_models/observable_comment.dart';
import 'package:tracksfer/models/observable_models/observable_group.dart';
import 'package:tracksfer/models/observable_models/observable_track.dart';
part 'feed_activity.g.dart';

class FeedActivity = _FeedActivityBase with _$FeedActivity;

abstract class _FeedActivityBase with Store {
  @observable
  int actionType;
  @observable
  ObservableUser user;
  @observable
  ObservableGroup group;
  @observable
  ObservableTrack track;
  @observable
  ObservableComment comment;

  _FeedActivityBase({
    this.actionType,
    this.user,
    this.comment,
    this.group,
    this.track,
  });

  FeedActivity factoryFromJson(Map<String, dynamic> json) {
    print(json);
    print('xyz');
    return FeedActivity(
      actionType: json['action_type'],
      user: ObservableUser().factoryFromJson(json['user']),
      group: ObservableGroup().factoryFromJson(json['group']),
      track: ObservableTrack().factoryFromJson(json['track']),
      comment: ObservableComment().factoryFromJson(json['comment']),
    );
  }

  @action
  fromJson(Map<String, dynamic> json) {
    actionType = json['action_type'];
    user = ObservableUser().factoryFromJson(json['user']);
    group = ObservableGroup().factoryFromJson(json['group']);
    track = ObservableTrack().factoryFromJson(json['track']);
    comment = ObservableComment().factoryFromJson(json['comment']);
  }
}
