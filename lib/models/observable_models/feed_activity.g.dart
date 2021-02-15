// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feed_activity.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$FeedActivity on _FeedActivityBase, Store {
  final _$idAtom = Atom(name: '_FeedActivityBase.id');

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

  final _$foreignIdAtom = Atom(name: '_FeedActivityBase.foreignId');

  @override
  String get foreignId {
    _$foreignIdAtom.reportRead();
    return super.foreignId;
  }

  @override
  set foreignId(String value) {
    _$foreignIdAtom.reportWrite(value, super.foreignId, () {
      super.foreignId = value;
    });
  }

  final _$timeAtom = Atom(name: '_FeedActivityBase.time');

  @override
  DateTime get time {
    _$timeAtom.reportRead();
    return super.time;
  }

  @override
  set time(DateTime value) {
    _$timeAtom.reportWrite(value, super.time, () {
      super.time = value;
    });
  }

  final _$verbAtom = Atom(name: '_FeedActivityBase.verb');

  @override
  String get verb {
    _$verbAtom.reportRead();
    return super.verb;
  }

  @override
  set verb(String value) {
    _$verbAtom.reportWrite(value, super.verb, () {
      super.verb = value;
    });
  }

  final _$actorAtom = Atom(name: '_FeedActivityBase.actor');

  @override
  ObservableUser get actor {
    _$actorAtom.reportRead();
    return super.actor;
  }

  @override
  set actor(ObservableUser value) {
    _$actorAtom.reportWrite(value, super.actor, () {
      super.actor = value;
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
id: ${id},
foreignId: ${foreignId},
time: ${time},
verb: ${verb},
actor: ${actor},
group: ${group},
track: ${track},
comment: ${comment}
    ''';
  }
}
