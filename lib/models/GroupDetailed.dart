import 'package:mobx/mobx.dart';
import 'package:tracksfer/models/observable_models/logged_user.dart';

abstract class GroupDetailed {
  String id;
  String groupName;
  String groupDesc;
  bool isPrivate;
  DateTime createdAt;
  DateTime updatedAt;
  ObservableList<ObservableUser> users;
  ObservableList<ObservableUser> pendingUsers;
}
