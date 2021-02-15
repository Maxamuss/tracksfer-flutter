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
  dynamic fromJson(List<Map<String, dynamic>> json) {
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
activities: ${activities},
isActivityEmpty: ${isActivityEmpty},
activityLength: ${activityLength}
    ''';
  }
}
