import 'package:mobx/mobx.dart';
import 'package:tracksfer/models/observable_models/feed_activity.dart';
import 'package:tracksfer/models/observable_models/observable_group.dart';
part 'feed_item.g.dart';

class FeedItem = _FeedItemBase with _$FeedItem;

abstract class _FeedItemBase with Store {
  @observable
  ObservableList<FeedActivity> activities = ObservableList.of([]);

  @computed
  bool get isActivityEmpty => activities.isEmpty;
  @computed
  int get activityLength => activities.length;

  _FeedItemBase({this.activities});

  FeedItem factoryFromJson(List<dynamic> json) {
    print(json);
    return FeedItem(
      activities: json
          .map((model) => FeedActivity().factoryFromJson(model))
          .toList()
          .asObservable(),
    );
  }

  @action
  fromJson(List<Map<String, dynamic>> json) {
    activities = json
        .map((model) => FeedActivity().factoryFromJson(model))
        .toList()
        .asObservable();
  }
}
