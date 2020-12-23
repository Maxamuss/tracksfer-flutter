import 'package:mobx/mobx.dart';
import 'package:tracksfer/models/GroupDetailed.dart';
import 'package:tracksfer/models/observable_models/logged_user.dart';
import 'package:tracksfer/models/observable_models/observable_group.dart';
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
  ObservableList<ObservableUser> users = ObservableList.of([]);
  @observable
  ObservableList<ObservableUser> pendingUsers = ObservableList.of([]);

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
    ObservableList<ObservableUser> users = usersJson
        .map((model) => ObservableUser().factoryFromJson(model))
        .toList()
        .asObservable();
    ObservableList<ObservableUser> pendingUsers = pendingUsersJson
        .map((model) => ObservableUser().factoryFromJson(model))
        .toList()
        .asObservable();

    return ObservableDetailedGroup(
      id: json['id'],
      groupName: decodeString(json['group_name']),
      groupDesc: decodeString(json['group_desc']),
      isPrivate: json['is_private'],
      createdAt: DateTime.parse(json['created_at']),
      updatedAt: DateTime.parse(json['updated_at']),
      users: users,
      pendingUsers: pendingUsers,
    );
  }

  ObservableDetailedGroup fromGroup(ObservableGroup group) {
    return ObservableDetailedGroup(
      id: group.id,
      groupName: group.groupName,
      groupDesc: group.groupDesc,
      isPrivate: group.isPrivate,
      createdAt: group.createdAt,
      updatedAt: group.updatedAt,
      users: null,
      pendingUsers: null,
    );
  }

  @action
  fromJson(Map<String, dynamic> json) {
    Iterable usersJson = json['users'];
    Iterable pendingUsersJson = json['pending_users'];
    ObservableList<ObservableUser> users = usersJson
        .map((model) => ObservableUser().factoryFromJson(model))
        .toList()
        .asObservable();
    ObservableList<ObservableUser> pendingUsers = pendingUsersJson
        .map((model) => ObservableUser().factoryFromJson(model))
        .toList()
        .asObservable();

    this.id = json['id'];
    this.groupName = decodeString(json['group_name']);
    this.groupDesc = decodeString(json['group_desc']);
    this.isPrivate = json['is_private'];
    this.createdAt = DateTime.parse(json['created_at']);
    this.updatedAt = DateTime.parse(json['updated_at']);
    this.users = users;
    this.pendingUsers = pendingUsers;
  }
}
