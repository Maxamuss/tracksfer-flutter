// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feed_item.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$FeedItem on _FeedItemBase, Store {
  Computed<bool> _$isActivityEmptyComputed;

  @override
  bool get isActivityEmpty =>
      (_$isActivityEmptyComputed ??= Computed<bool>(() => super.isActivityEmpty,
              name: '_FeedItemBase.isActivityEmpty'))
          .value;
  Computed<int> _$activityLengthComputed;

  @override
  int get activityLength =>
      (_$activityLengthComputed ??= Computed<int>(() => super.activityLength,
              name: '_FeedItemBase.activityLength'))
          .value;

  final _$idAtom = Atom(name: '_FeedItemBase.id');

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

  final _$activityCountAtom = Atom(name: '_FeedItemBase.activityCount');

  @override
  int get activityCount {
    _$activityCountAtom.reportRead();
    return super.activityCount;
  }

  @override
  set activityCount(int value) {
    _$activityCountAtom.reportWrite(value, super.activityCount, () {
      super.activityCount = value;
    });
  }

  final _$actorCountAtom = Atom(name: '_FeedItemBase.actorCount');

  @override
  int get actorCount {
    _$actorCountAtom.reportRead();
    return super.actorCount;
  }

  @override
  set actorCount(int value) {
    _$actorCountAtom.reportWrite(value, super.actorCount, () {
      super.actorCount = value;
    });
  }

  final _$verbAtom = Atom(name: '_FeedItemBase.verb');

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

  final _$groupAtom = Atom(name: '_FeedItemBase.group');

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

  final _$createdAtAtom = Atom(name: '_FeedItemBase.createdAt');

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

  final _$updatedAtAtom = Atom(name: '_FeedItemBase.updatedAt');

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

  final _$activitiesAtom = Atom(name: '_FeedItemBase.activities');

  @override
  ObservableList<FeedActivity> get activities {
    _$activitiesAtom.reportRead();
    return super.activities;
  }

  @override
  set activities(ObservableList<FeedActivity> value) {
    _$activitiesAtom.reportWrite(value, super.activities, () {
      super.activities = value;
    });
  }

  final _$_FeedItemBaseActionController =
      ActionController(name: '_FeedItemBase');

  @override
  dynamic fromJson(Map<String, dynamic> json) {
    final _$actionInfo = _$_FeedItemBaseActionController.startAction(
        name: '_FeedItemBase.fromJson');
    try {
      return super.fromJson(json);
    } finally {
      _$_FeedItemBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
id: ${id},
activityCount: ${activityCount},
actorCount: ${actorCount},
verb: ${verb},
group: ${group},
createdAt: ${createdAt},
updatedAt: ${updatedAt},
activities: ${activities},
isActivityEmpty: ${isActivityEmpty},
activityLength: ${activityLength}
    ''';
  }
}
