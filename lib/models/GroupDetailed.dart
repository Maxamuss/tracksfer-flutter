import '../services/utils.dart';
import 'User.dart';

// Model for GroupDetailedSerializer
class GroupDetailed {
  final String id;
  final String groupName;
  final String groupDesc;
  final bool isPrivate;
  final DateTime createdAt;
  final DateTime updatedAt;
  final List<User> users;
  final List<User> pendingUsers;

  GroupDetailed(
      {this.id,
      this.groupName,
      this.groupDesc,
      this.isPrivate,
      this.createdAt,
      this.users,
      this.updatedAt,
      this.pendingUsers});

  factory GroupDetailed.fromJson(Map<String, dynamic> json) {
    Iterable usersJson = json['users'];
    Iterable pendingUsersJson = json['pending_users'];
    List<User> users = usersJson.map((model) => User.fromJson(model)).toList();
    List<User> pendingUsers =
        pendingUsersJson.map((model) => User.fromJson(model)).toList();

    return GroupDetailed(
      id: json['id'],
      groupName: decodeString(json['group_name']),
      groupDesc: decodeString(json['group_desc']),
      isPrivate: json['is_private'],
      createdAt: json['created_at'],
      updatedAt: json['updated_at'],
      users: users,
      pendingUsers: pendingUsers,
    );
  }
}
