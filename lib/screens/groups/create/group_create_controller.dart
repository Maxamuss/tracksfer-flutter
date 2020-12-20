import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:tracksfer/locator/locator.dart';
import 'package:tracksfer/models/observable_models/observable_group.dart';
import 'package:tracksfer/screens/groups/list/group_list_controller.dart';
import 'package:tracksfer/services/auth.dart';
import 'package:tracksfer/services/navigation/navigation_controller.dart';
import 'package:tracksfer/services/navigation/navigation_routes.dart';
import 'package:tracksfer/services/requests.dart';
part 'group_create_controller.g.dart';

class CreateGroupController = _CreateGroupControllerBase
    with _$CreateGroupController;

abstract class _CreateGroupControllerBase with Store {
  final groupNameController = TextEditingController();
  final groupDescController = TextEditingController();

  @observable
  bool _error = false;

  @computed
  bool get hasError => _error;
  @computed
  String get groupName => groupNameController.text;
  @computed
  String get groupDesc => groupDescController.text;

  @action
  Future<void> createGroup() async {
    final formData = {'group_name': groupName, 'group_desc': groupDesc};
    try {
      final response = await Request.post('groups/', formData);
      if (response.statusCode == 201) {
        var navigator = G.get<NavigationController>();
        final group = ObservableGroup().factoryFromJson(response.data);
        G.get<GroupListController>().addGroup(group);
        navigator.pop();
        navigator.push(GROUP_DETAILS_ROUTE, arguments: group);
      } else if (response.statusCode == 403) {
        logout();
      } else {
        _error = true;
      }
    } catch (e) {
      _error = true;
    }
  }

  @action
  refresh() {
    _error = false;
  }
}
