import 'package:mobx/mobx.dart';
import 'package:tracksfer/models/observable_models/logged_user.dart';
import 'package:tracksfer/models/observable_models/observable_comment.dart';
import 'package:tracksfer/models/observable_models/observable_group.dart';
import 'package:tracksfer/models/observable_models/observable_track.dart';
part 'feed_activity.g.dart';

class FeedActivity = _FeedActivityBase with _$FeedActivity;

abstract class _FeedActivityBase with Store {
  @observable
  String id;
  @observable
  String foreignId;
  @observable
  DateTime time;
  @observable
  String verb;
  @observable
  ObservableUser actor;
  @observable
  ObservableGroup group;
  @observable
  ObservableTrack track;
  @observable
  ObservableComment comment;

  _FeedActivityBase(
      {this.actor,
      this.comment,
      this.time,
      this.foreignId,
      this.group,
      this.id,
      this.track,
      this.verb});

  FeedActivity factoryFromJson(Map<String, dynamic> json) {
    return FeedActivity(
      id: json['id'],
      foreignId: json['foreign_id'],
      verb: json['verb'],
      time: DateTime.parse(json['time']),
      actor: ObservableUser().factoryFromJson(json['actor']),
      group: ObservableGroup().factoryFromJson(json['origin']),
      track: ObservableTrack().factoryFromJson(json['object']),
      comment: ObservableComment().factoryFromJson(json['object']),
    );
  }

  @action
  fromJson(Map<String, dynamic> json) {
    id = json['id'];
    foreignId = json['foreign_id'];
    verb = json['verb'];
    time = DateTime.parse(json['time']);
    actor = ObservableUser().factoryFromJson(json['actor']);
    group = ObservableGroup().factoryFromJson(json['origin']);
    track = ObservableTrack().factoryFromJson(json['object']);
    comment = ObservableComment().factoryFromJson(json['object']);
  }
}
