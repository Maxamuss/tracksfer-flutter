// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'observable_group.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ObservableGroup on _ObservableGroupBase, Store {
  final _$idAtom = Atom(name: '_ObservableGroupBase.id');

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

  final _$groupNameAtom = Atom(name: '_ObservableGroupBase.groupName');

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

  final _$groupDescAtom = Atom(name: '_ObservableGroupBase.groupDesc');

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

  final _$isPrivateAtom = Atom(name: '_ObservableGroupBase.isPrivate');

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

  final _$createdAtAtom = Atom(name: '_ObservableGroupBase.createdAt');

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

  final _$updatedAtAtom = Atom(name: '_ObservableGroupBase.updatedAt');

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

  final _$_ObservableGroupBaseActionController =
      ActionController(name: '_ObservableGroupBase');

  @override
  dynamic fromJson(Map<String, dynamic> json) {
    final _$actionInfo = _$_ObservableGroupBaseActionController.startAction(
        name: '_ObservableGroupBase.fromJson');
    try {
      return super.fromJson(json);
    } finally {
      _$_ObservableGroupBaseActionController.endAction(_$actionInfo);
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
updatedAt: ${updatedAt}
    ''';
  }
}
