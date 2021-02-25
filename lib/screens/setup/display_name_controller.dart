import 'package:flutter/cupertino.dart';
import 'package:mobx/mobx.dart';
import 'package:tracksfer/locator/locator.dart';
import 'package:tracksfer/services/auth.dart';
import 'package:tracksfer/services/navigation/navigation_controller.dart';
import 'package:tracksfer/services/navigation/navigation_routes.dart';
import 'package:tracksfer/services/requests.dart';
part 'display_name_controller.g.dart';

class SetDisplayNameController = _SetDisplayNameControllerBase
    with _$SetDisplayNameController;

abstract class _SetDisplayNameControllerBase with Store {
  @observable
  TextEditingController textController;
  @computed
  String get username => textController.text;
  @computed
  int get length => username.length;

  _SetDisplayNameControllerBase(String displayName) {
    this.textController = TextEditingController(text: displayName);
  }

  void updateUsername() async {
    final formData = {'display_name': username};
    try {
      final response = await Request.patch('profile/', formData);
      if (response.statusCode == 200) {
        G.get<NavigationController>().replaceWith(HOME_ROUTE);
      } else if (response.statusCode == 403) {
        logout();
      } else {
        print("error");
        //_setError();
      }
    } catch (e) {
      print(e.toString());
      //_setError();
    }
  }
}
