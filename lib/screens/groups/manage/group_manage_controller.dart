import 'package:expandable_sliver_list/expandable_sliver_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:mobx/mobx.dart';
import 'package:tracksfer/locator/locator.dart';
import 'package:tracksfer/models/observable_models/observable_detailed_group.dart';
import 'package:tracksfer/models/observable_models/logged_user.dart';
import 'package:tracksfer/models/observable_models/observable_group.dart';
import 'package:tracksfer/screens/groups/list/group_list_controller.dart';
import 'package:tracksfer/services/auth.dart';
import 'package:tracksfer/services/requests.dart';
part 'group_manage_controller.g.dart';

class GroupManagementController = _GroupManagementControllerBase
    with _$GroupManagementController;

abstract class _GroupManagementControllerBase with Store {
  final ScrollController scrollController = ScrollController();
  @observable
  ExpandableSliverListController exSliverController =
      ExpandableSliverListController();

  @observable
  TextEditingController nameController;
  @observable
  TextEditingController descController;
  @observable
  ObservableDetailedGroup _group = ObservableDetailedGroup();
  @observable
  bool isEditing = false;
  @observable
  bool isLoading = true;
  @observable
  bool hasError = false;
  @observable
  bool isCollapsed = false;

  @action
  toggleExpandable() {
    exSliverController.isCollapsed()
        ? exSliverController.expand()
        : exSliverController.collapse();
    isCollapsed = !isCollapsed;
  }

  @computed
  String get groupName => _group.groupName;
  @computed
  String get groupDesc => _group.groupDesc;
  @computed
  ObservableList<ObservableUser> get users => _group.users;
  @computed
  ObservableList<ObservableUser> get pendingUsers => _group.pendingUsers;
  @computed
  int get userListLength {
    return isLoading || hasError ? 1 : users.length;
  }

  @computed
  int get pendingUserListLength {
    return isLoading || hasError ? 1 : pendingUsers.length;
  }

  @computed
  String get newName => nameController.text;
  @computed
  String get newDesc => descController.text;

  _GroupManagementControllerBase(ObservableGroup group) {
    _group = ObservableDetailedGroup().fromGroup(group);
    _getUsers();
    nameController = TextEditingController(text: groupName);
    descController = TextEditingController(text: groupDesc);
  }

  @action
  _getUsers() async {
    try {
      final response = await Request.get('groups/${_group.id}/detail/');
      if (response.statusCode == 200) {
        print("??????????");
        _group = ObservableDetailedGroup().factoryFromJson(response.data);
        isLoading = false;
      } else if (response.statusCode == 403) {
        logout();
      } else {
        _setEditingError();
      }
    } catch (e) {
      print(e.toString());
      _setEditingError();
    }
  }

  @action
  startEditing() {
    _setOffsetTo(0);
    isEditing = true;
  }

  @action
  saveChanges() async {
    if (groupName != newName || groupDesc != newDesc) {
      try {
        final formData = {'group_name': newName, 'group_desc': newDesc};
        final response =
            await Request.put('groups/${_group.id}/detail/', formData);
        if (response.statusCode == 200) {
          var updatedGroup = _group;
          updatedGroup.groupName = newName;
          updatedGroup.groupDesc = newDesc;
          G
              .get<GroupListController>()
              .replaceGroup(ObservableGroup().fromDetailedGroup(updatedGroup));
          _group = updatedGroup;
          nameController = TextEditingController(text: groupName);
          descController = TextEditingController(text: groupDesc);
          isEditing = false;
        } else if (response.statusCode == 403) {
          logout();
        } else {
          _setEditingError();
        }
      } catch (e) {
        print(e.toString());
        _setEditingError();
      }
    } else {
      isEditing = false;
    }
  }

  @action
  retryGetUsers() {
    hasError = false;
    isLoading = true;
    _getUsers();
  }

  @action
  _setEditingError() {
    isEditing = false;
    nameController.text = groupName;
    descController.text = groupDesc;
  }

  @action
  _setError() {
    isLoading = false;
    hasError = true;
  }

  _setOffsetTo(double value) {
    scrollController.animateTo(value,
        duration: Duration(milliseconds: 400), curve: Curves.linear);
  }
}
