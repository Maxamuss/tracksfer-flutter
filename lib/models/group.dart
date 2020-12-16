import '../services/utils.dart';

class Group {
  final String id;
  final String groupName;
  final String groupDesc;
  final bool isPrivate;
  final DateTime createdAt;
  final DateTime updatedAt;

  Group(
      {this.id,
      this.groupName,
      this.groupDesc,
      this.isPrivate,
      this.createdAt,
      this.updatedAt});

  factory Group.fromJson(Map<String, dynamic> json) {
    return Group(
      id: json['id'],
      groupName: decodeString(json['group_name']),
      groupDesc: decodeString(json['group_desc']),
      isPrivate: json['is_private'],
      createdAt: DateTime.parse(json['created_at']),
      updatedAt: DateTime.parse(json['updated_at']),
    );
  }
}
