import 'package:mobx/mobx.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:tracksfer/models/observable_models/observable_group.dart';
import 'package:tracksfer/services/auth.dart';
import 'package:tracksfer/services/requests.dart';
part 'group_list_controller.g.dart';

class GroupListController = _GroupListControllerBase with _$GroupListController;

abstract class _GroupListControllerBase with Store {
  final refreshController = RefreshController(initialRefresh: false);
  ObservableList<ObservableGroup> _groupList =
      ObservableList<ObservableGroup>.of([]);
  @observable
  bool _isFirstLoading = true;
  @observable
  bool _loading = true;
  @observable
  bool _error = false;

  @computed
  bool get hasError => _error;
  @computed
  bool get isLoading => _loading;
  @computed
  ObservableList<ObservableGroup> get groups => _groupList;
  @computed
  bool get isEmpty => _groupList.isEmpty;
  @computed
  int get length => _groupList.length;

  @action
  void loadGroupList() {
    _getGroupList().then((value) => _isFirstLoading = false);
    if (_isFirstLoading) {}
    return;
  }

  @action
  addGroup(ObservableGroup group) {
    _groupList.add(group);
  }

  @action
  _setGroupList(ObservableList<ObservableGroup> groups) {
    _groupList = groups;
  }

  @action
  Future<void> _getGroupList() async {
    try {
      final response = await Request.get('groups/');
      if (response.statusCode == 200) {
        List groupsJson = response.data['results'];
        ObservableList<ObservableGroup> groups = groupsJson
            .map((model) => ObservableGroup().factoryFromJson(model))
            .toList()
            .asObservable();
        _setGroupList(groups);
        _loading = false;
        refreshController.refreshCompleted();
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
    _getGroupList();
  }

  @action
  void _setError() {
    _error = true;
    _loading = false;
  }
}
