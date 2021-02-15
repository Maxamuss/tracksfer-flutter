// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'observable_comment.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ObservableComment on _ObservableCommentBase, Store {
  final _$idAtom = Atom(name: '_ObservableCommentBase.id');

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

  final _$trackIdAtom = Atom(name: '_ObservableCommentBase.trackId');

  @override
  String get trackId {
    _$trackIdAtom.reportRead();
    return super.trackId;
  }

  @override
  set trackId(String value) {
    _$trackIdAtom.reportWrite(value, super.trackId, () {
      super.trackId = value;
    });
  }

  final _$userAtom = Atom(name: '_ObservableCommentBase.user');

  @override
  ObservableUser get user {
    _$userAtom.reportRead();
    return super.user;
  }

  @override
  set user(ObservableUser value) {
    _$userAtom.reportWrite(value, super.user, () {
      super.user = value;
    });
  }

  final _$createdAtAtom = Atom(name: '_ObservableCommentBase.createdAt');

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

  final _$bodyAtom = Atom(name: '_ObservableCommentBase.body');

  @override
  String get body {
    _$bodyAtom.reportRead();
    return super.body;
  }

  @override
  set body(String value) {
    _$bodyAtom.reportWrite(value, super.body, () {
      super.body = value;
    });
  }

  final _$_ObservableCommentBaseActionController =
      ActionController(name: '_ObservableCommentBase');

  @override
  dynamic fromJson(Map<String, dynamic> json) {
    final _$actionInfo = _$_ObservableCommentBaseActionController.startAction(
        name: '_ObservableCommentBase.fromJson');
    try {
      return super.fromJson(json);
    } finally {
      _$_ObservableCommentBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
id: ${id},
trackId: ${trackId},
user: ${user},
createdAt: ${createdAt},
body: ${body}
    ''';
  }
}
