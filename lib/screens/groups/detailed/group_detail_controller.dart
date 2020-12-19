import 'package:mobx/mobx.dart';
import 'package:tracksfer/models/observable_models/observable_group.dart';
import 'package:tracksfer/models/observable_models/observable_track.dart';
import 'package:tracksfer/services/auth.dart';
import 'package:tracksfer/services/requests.dart';
import 'package:tracksfer/services/spotify.dart';
part 'group_detail_controller.g.dart';

class GroupDetailController = _GroupDetailControllerBase
    with _$GroupDetailController;

abstract class _GroupDetailControllerBase with Store {
  ObservableList<ObservableTrack> _trackList;
  ObservableGroup _group;
  @observable
  bool _error = false;
  @observable
  bool _loading = true;

  @computed
  bool get hasError => _error;
  @computed
  bool get isLoading => _loading;
  @computed
  ObservableList<ObservableTrack> get tracks => _trackList;
  @computed
  String get groupName => _group.groupName;
  @computed
  bool get isEmpty => _trackList.isEmpty;
  @computed
  int get length => _trackList.length;

  _GroupDetailControllerBase(this._group) {
    _getTracks();
  }

  @action
  _setTrackList(ObservableList<ObservableTrack> newList) {
    _trackList = newList;
  }

  @action
  Future<void> _getTracks() async {
    try {
      final response = await Request.get('groups/${_group.id}/tracks/');
      if (response.statusCode == 200) {
        final Iterable tracksJson = response.data['results'];
        final List<ObservableTrack> tracks = tracksJson
            .map((model) => ObservableTrack().factoryFromJson(model))
            .toList()
            .asObservable();
        await populateSpotifyDetails(tracks);
        _setTrackList(tracks);
        _loading = false;
      } else if (response.statusCode == 403) {
        logout();
      } else {
        _setError();
      }
    } catch (e) {
      print(e);
      _setError();
    }
    _loading = false;
    return null;
  }

  @action
  void refresh() {
    _error = false;
    _getTracks();
  }

  @action
  void _setError() {
    _error = true;
    _loading = false;
  }
}
