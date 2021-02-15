// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feed_activity.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$FeedActivity on _FeedActivityBase, Store {
  final _$actionTypeAtom = Atom(name: '_FeedActivityBase.actionType');

  @override
  int get actionType {
    _$actionTypeAtom.reportRead();
    return super.actionType;
  }

  @override
  set actionType(int value) {
    _$actionTypeAtom.reportWrite(value, super.actionType, () {
      super.actionType = value;
    });
  }

  final _$userAtom = Atom(name: '_FeedActivityBase.user');

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

  final _$groupAtom = Atom(name: '_FeedActivityBase.group');

  @override
  ObservableGroup get group {
    _$groupAtom.reportRead();
    return super.group;
  }

  @override
  set group(ObservableGroup value) {
    _$groupAtom.reportWrite(value, super.group, () {
      super.group = value;
    });
  }

  final _$trackAtom = Atom(name: '_FeedActivityBase.track');

  @override
  ObservableTrack get track {
    _$trackAtom.reportRead();
    return super.track;
  }

  @override
  set track(ObservableTrack value) {
    _$trackAtom.reportWrite(value, super.track, () {
      super.track = value;
    });
  }

  final _$commentAtom = Atom(name: '_FeedActivityBase.comment');

  @override
  ObservableComment get comment {
    _$commentAtom.reportRead();
    return super.comment;
  }

  @override
  set comment(ObservableComment value) {
    _$commentAtom.reportWrite(value, super.comment, () {
      super.comment = value;
    });
  }

  final _$_FeedActivityBaseActionController =
      ActionController(name: '_FeedActivityBase');

  @override
  dynamic fromJson(Map<String, dynamic> json) {
    final _$actionInfo = _$_FeedActivityBaseActionController.startAction(
        name: '_FeedActivityBase.fromJson');
    try {
      return super.fromJson(json);
    } finally {
      _$_FeedActivityBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
actionType: ${actionType},
user: ${user},
group: ${group},
track: ${track},
comment: ${comment}
    ''';
  }
}
