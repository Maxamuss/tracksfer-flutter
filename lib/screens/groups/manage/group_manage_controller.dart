import 'package:flutter/cupertino.dart';
import 'package:mobx/mobx.dart';
import 'package:tracksfer/locator/locator.dart';

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
  TextEditingController nameController;
  @observable
  TextEditingController descController;

  @observable
  ObservableGroup _group;
  @observable
  bool isEditing = false;

  @computed
  String get groupName => _group.groupName;
  @computed
  String get groupDesc => _group.groupDesc;
  @computed
  String get newName => nameController.text;
  @computed
  String get newDesc => descController.text;

  _GroupManagementControllerBase(this._group) {
    nameController = TextEditingController(text: groupName);
    descController = TextEditingController(text: groupDesc);
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
          G.get<GroupListController>().replaceGroup(updatedGroup);
          _group = updatedGroup;
          nameController = TextEditingController(text: groupName);
          descController = TextEditingController(text: groupDesc);
          isEditing = false;
        } else if (response.statusCode == 403) {
          logout();
        } else {
          _setError();
        }
      } catch (e) {
        print(e.toString());
        _setError();
      }
    } else {
      isEditing = false;
    }
  }

  _setOffsetTo(double value) {
    scrollController.animateTo(value,
        duration: Duration(milliseconds: 400), curve: Curves.linear);
  }

  _setError() {
    isEditing = false;
    nameController.text = groupName;
    descController.text = groupDesc;
  }
}
