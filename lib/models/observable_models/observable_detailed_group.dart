import 'package:mobx/mobx.dart';
import 'package:tracksfer/models/GroupDetailed.dart';
import 'package:tracksfer/models/observable_models/logged_user.dart';
import 'package:tracksfer/services/utils.dart';
part 'observable_detailed_group.g.dart';

class ObservableDetailedGroup = _ObservableDetailedGroupBase
    with _$ObservableDetailedGroup;

abstract class _ObservableDetailedGroupBase
    with Store
    implements GroupDetailed {
  @observable
  String id;
  @observable
  String groupName;
  @observable
  String groupDesc;
  @observable
  bool isPrivate;
  @observable
  DateTime createdAt;
  @observable
  DateTime updatedAt;
  @observable
  ObservableList<LoggedUser> users = ObservableList.of([]);
  @observable
  ObservableList<LoggedUser> pendingUsers = ObservableList.of([]);

  _ObservableDetailedGroupBase(
      {this.id,
      this.groupName,
      this.groupDesc,
      this.isPrivate,
      this.createdAt,
      this.users,
      this.updatedAt,
      this.pendingUsers});

  ObservableDetailedGroup factoryFromJson(Map<String, dynamic> json) {
    Iterable usersJson = json['users'];
    Iterable pendingUsersJson = json['pending_users'];
    //List<User> users = usersJson.map((model) => User.fromJson(model)).toList();
    //List<User> pendingUsers =
    //    pendingUsersJson.map((model) => User.fromJson(model)).toList();

    return ObservableDetailedGroup(
      id: json['id'],
      groupName: decodeString(json['group_name']),
      groupDesc: decodeString(json['group_desc']),
      isPrivate: json['is_private'],
      createdAt: json['created_at'],
      updatedAt: json['updated_at'],
      //users: users,
      //pendingUsers: pendingUsers,
    );
  }

  @action
  fromJson(Map<String, dynamic> json) {
    Iterable usersJson = json['users'];
    Iterable pendingUsersJson = json['pending_users'];
    //List<User> users = usersJson.map((model) => User.fromJson(model)).toList();
    //List<User> pendingUsers =
    //    pendingUsersJson.map((model) => User.fromJson(model)).toList();

    id = json['id'];
    groupName = decodeString(json['group_name']);
    groupDesc = decodeString(json['group_desc']);
    isPrivate = json['is_private'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    //users= users;
    //pendingUsers= pendingUsers;
  }
}
