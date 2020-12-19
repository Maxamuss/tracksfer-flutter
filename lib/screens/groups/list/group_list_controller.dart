import 'package:mobx/mobx.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:tracksfer/models/observable_models/observable_group.dart';
import 'package:tracksfer/services/auth.dart';
import 'package:tracksfer/services/requests.dart';
part 'group_list_controller.g.dart';

class GroupListController = _GroupListControllerBase with _$GroupListController;

abstract class _GroupListControllerBase with Store {
  final refreshController = RefreshController(initialRefresh: false);
  @observable
  ObservableList<ObservableGroup> groupList =
      ObservableList<ObservableGroup>.of([]);
  @observable
  bool isFirstLoading = true;
  @observable
  bool loading = true;
  @observable
  bool error = false;

  @computed
  bool get isEmpty => groupList.isEmpty;
  @computed
  int get length => groupList.length;

  @action
  void loadGroupList() {
    if (isFirstLoading) {
      getGroupList().then((value) => isFirstLoading = false);
    }
  }

  @action
  addGroup(ObservableGroup group) {
    groupList.add(group);
  }

  @action
  Future<void> getGroupList() async {
    try {
      final response = await Request.get('groups/');
      if (response.statusCode == 200) {
        List groupsJson = response.data['results'];
        ObservableList<ObservableGroup> groups = groupsJson
            .map((model) => ObservableGroup().factoryFromJson(model))
            .toList()
            .asObservable();
        groupList = groups;
        loading = false;
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
    loading = false;
    return null;
  }

  @action
  void refresh() {
    error = false;
    loading = true;
    getGroupList();
  }

  @action
  void _setError() {
    error = true;
    loading = false;
  }
}
