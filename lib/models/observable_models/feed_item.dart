import 'package:mobx/mobx.dart';
import 'package:tracksfer/models/observable_models/feed_activity.dart';
import 'package:tracksfer/models/observable_models/observable_group.dart';
part 'feed_item.g.dart';

class FeedItem = _FeedItemBase with _$FeedItem;

abstract class _FeedItemBase with Store {
  @observable
  String id;
  @observable
  int activityCount;
  @observable
  int actorCount;
  @observable
  String verb;
  @observable
  ObservableGroup group;
  @observable
  DateTime createdAt;
  @observable
  DateTime updatedAt;
  @observable
  ObservableList<FeedActivity> activities = ObservableList.of([]);

  @computed
  bool get isActivityEmpty => activities.isEmpty;
  @computed
  int get activityLength => activities.length;

  _FeedItemBase(
      {this.id,
      this.activityCount,
      this.verb,
      this.group,
      this.actorCount,
      this.activities,
      this.createdAt,
      this.updatedAt});

  FeedItem factoryFromJson(Map<String, dynamic> json) {
    List<Map<String, dynamic>> activityJson = json['activities'];
    return FeedItem(
      id: json['id'],
      verb: json['verb'],
      group: ObservableGroup().factoryFromJson(json['group']),
      createdAt: json['created_at'],
      updatedAt: json['updated_at'],
      activities: activityJson
          .map((model) => FeedActivity().factoryFromJson(model))
          .toList()
          .asObservable(),
    );
  }

  @action
  fromJson(Map<String, dynamic> json) {
    List<Map<String, dynamic>> activityJson = json['activities'];

    id = json['id'];
    verb = json['verb'];
    group = ObservableGroup().factoryFromJson(json['group']);
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    activities = activityJson
        .map((model) => FeedActivity().factoryFromJson(model))
        .toList()
        .asObservable();
  }
}
