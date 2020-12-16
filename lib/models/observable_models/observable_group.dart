import 'package:mobx/mobx.dart';
import 'package:tracksfer/models/Group.dart';
import 'package:tracksfer/services/utils.dart';
part 'observable_group.g.dart';

class ObservableGroup = _ObservableGroupBase with _$ObservableGroup;

abstract class _ObservableGroupBase with Store implements Group {
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

  _ObservableGroupBase(
      {this.id,
      this.groupName,
      this.groupDesc,
      this.isPrivate,
      this.createdAt,
      this.updatedAt});

  ObservableGroup factoryFromJson(Map<String, dynamic> json) {
    return ObservableGroup(
      id: json['id'],
      groupName: decodeString(json['group_name']),
      groupDesc: decodeString(json['group_desc']),
      isPrivate: json['is_private'],
      createdAt: DateTime.parse(json['created_at']),
      updatedAt: DateTime.parse(json['updated_at']),
    );
  }

  @action
  fromJson(Map<String, dynamic> json) {
    id = json['id'];
    groupName = decodeString(json['group_name']);
    groupDesc = decodeString(json['group_desc']);
    isPrivate = json['is_private'];
    createdAt = DateTime.parse(json['created_at']);
    updatedAt = DateTime.parse(json['updated_at']);
  }
}
