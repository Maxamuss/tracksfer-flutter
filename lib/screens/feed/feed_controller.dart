import 'package:mobx/mobx.dart';
import 'package:tracksfer/models/observable_models/feed_activity.dart';
import 'package:tracksfer/models/observable_models/feed_item.dart';
import 'package:tracksfer/models/observable_models/observable_track.dart';
import 'package:tracksfer/services/auth.dart';
import 'package:tracksfer/services/requests.dart';
import 'package:tracksfer/services/spotify.dart';
part 'feed_controller.g.dart';

class FeedController = _FeedControllerBase with _$FeedController;

abstract class _FeedControllerBase with Store {
  @observable
  ObservableList<FeedItem> _feedItems = ObservableList.of([]);
  @observable
  bool _loading = true;
  @observable
  bool _error = false;

  @computed
  bool get hasError => _error;
  @computed
  bool get isLoading => _loading;
  @computed
  ObservableList<FeedItem> get items => _feedItems;
  @computed
  bool get isEmpty => _feedItems.isEmpty;
  @computed
  int get length => _feedItems.length;

  @action
  void loadFeed() {
    _getItems();
  }

  @action
  Future<void> _getItems() async {
    try {
      final response = await Request.get('feed/');
      print(response.statusCode);
      if (response.statusCode == 200) {
        final feedJson = response.data['results'];
        _feedItems = feedJson
            .map((model) => FeedItem().factoryFromJson(model))
            .toList()
            .asObservable();
        // print(_feedItems);
        // final List<ObservableTrack> tracks = [];
        // _feedItems.forEach((item) {
        //   item.activities.forEach((activity) {
        //     tracks.add(activity.track);
        //   });
        // });
        // await populateSpotifyDetails(tracks);
        _loading = false;
      } else if (response.statusCode == 403) {
        logout();
      } else {
        _setError();
      }
    } catch (e) {
      print(e.toString());
      _setError();
    }
    _loading = false;
    return null;
  }

  @action
  void refresh() {
    _error = false;
    _loading = true;
    _getItems();
  }

  @action
  void _setError() {
    _error = true;
    _loading = false;
  }
}
