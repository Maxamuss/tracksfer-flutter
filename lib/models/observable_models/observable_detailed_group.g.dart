// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'observable_detailed_group.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ObservableDetailedGroup on _ObservableDetailedGroupBase, Store {
  final _$idAtom = Atom(name: '_ObservableDetailedGroupBase.id');

  @override
  String get id {
    _$idAtom.reportRead();
    return super.id;
  }

  @override
  set id(String value) {
    _$idAtom.reportWrite(value, super.id, () {
      super.id = value;
    });
  }

  final _$groupNameAtom = Atom(name: '_ObservableDetailedGroupBase.groupName');

  @override
  String get groupName {
    _$groupNameAtom.reportRead();
    return super.groupName;
  }

  @override
  set groupName(String value) {
    _$groupNameAtom.reportWrite(value, super.groupName, () {
      super.groupName = value;
    });
  }

  final _$groupDescAtom = Atom(name: '_ObservableDetailedGroupBase.groupDesc');

  @override
  String get groupDesc {
    _$groupDescAtom.reportRead();
    return super.groupDesc;
  }

  @override
  set groupDesc(String value) {
    _$groupDescAtom.reportWrite(value, super.groupDesc, () {
      super.groupDesc = value;
    });
  }

  final _$isPrivateAtom = Atom(name: '_ObservableDetailedGroupBase.isPrivate');

  @override
  bool get isPrivate {
    _$isPrivateAtom.reportRead();
    return super.isPrivate;
  }

  @override
  set isPrivate(bool value) {
    _$isPrivateAtom.reportWrite(value, super.isPrivate, () {
      super.isPrivate = value;
    });
  }

  final _$createdAtAtom = Atom(name: '_ObservableDetailedGroupBase.createdAt');

  @override
  DateTime get createdAt {
    _$createdAtAtom.reportRead();
    return super.createdAt;
  }

  @override
  set createdAt(DateTime value) {
    _$createdAtAtom.reportWrite(value, super.createdAt, () {
      super.createdAt = value;
    });
  }

  final _$updatedAtAtom = Atom(name: '_ObservableDetailedGroupBase.updatedAt');

  @override
  DateTime get updatedAt {
    _$updatedAtAtom.reportRead();
    return super.updatedAt;
  }

  @override
  set updatedAt(DateTime value) {
    _$updatedAtAtom.reportWrite(value, super.updatedAt, () {
      super.updatedAt = value;
    });
  }

  final _$usersAtom = Atom(name: '_ObservableDetailedGroupBase.users');

  @override
  ObservableList<LoggedUser> get users {
    _$usersAtom.reportRead();
    return super.users;
  }

  @override
  set users(ObservableList<LoggedUser> value) {
    _$usersAtom.reportWrite(value, super.users, () {
      super.users = value;
    });
  }

  final _$pendingUsersAtom =
      Atom(name: '_ObservableDetailedGroupBase.pendingUsers');

  @override
  ObservableList<LoggedUser> get pendingUsers {
    _$pendingUsersAtom.reportRead();
    return super.pendingUsers;
  }

  @override
  set pendingUsers(ObservableList<LoggedUser> value) {
    _$pendingUsersAtom.reportWrite(value, super.pendingUsers, () {
      super.pendingUsers = value;
    });
  }

  final _$_ObservableDetailedGroupBaseActionController =
      ActionController(name: '_ObservableDetailedGroupBase');

  @override
  dynamic fromJson(Map<String, dynamic> json) {
    final _$actionInfo = _$_ObservableDetailedGroupBaseActionController
        .startAction(name: '_ObservableDetailedGroupBase.fromJson');
    try {
      return super.fromJson(json);
    } finally {
      _$_ObservableDetailedGroupBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
id: ${id},
groupName: ${groupName},
groupDesc: ${groupDesc},
isPrivate: ${isPrivate},
createdAt: ${createdAt},
updatedAt: ${updatedAt},
users: ${users},
pendingUsers: ${pendingUsers}
    ''';
  }
}
