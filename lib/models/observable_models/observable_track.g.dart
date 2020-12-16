// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'observable_track.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ObservableTrack on _ObservableTrackBase, Store {
  final _$idAtom = Atom(name: '_ObservableTrackBase.id');

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

  final _$groupAtom = Atom(name: '_ObservableTrackBase.group');

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

  final _$spotifyIdAtom = Atom(name: '_ObservableTrackBase.spotifyId');

  @override
  String get spotifyId {
    _$spotifyIdAtom.reportRead();
    return super.spotifyId;
  }

  @override
  set spotifyId(String value) {
    _$spotifyIdAtom.reportWrite(value, super.spotifyId, () {
      super.spotifyId = value;
    });
  }

  final _$userAtom = Atom(name: '_ObservableTrackBase.user');

  @override
  LoggedUser get user {
    _$userAtom.reportRead();
    return super.user;
  }

  @override
  set user(LoggedUser value) {
    _$userAtom.reportWrite(value, super.user, () {
      super.user = value;
    });
  }

  final _$createdAtAtom = Atom(name: '_ObservableTrackBase.createdAt');

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

  final _$spotifyTrackAtom = Atom(name: '_ObservableTrackBase.spotifyTrack');

  @override
  Spotify.Track get spotifyTrack {
    _$spotifyTrackAtom.reportRead();
    return super.spotifyTrack;
  }

  @override
  set spotifyTrack(Spotify.Track value) {
    _$spotifyTrackAtom.reportWrite(value, super.spotifyTrack, () {
      super.spotifyTrack = value;
    });
  }

  final _$_ObservableTrackBaseActionController =
      ActionController(name: '_ObservableTrackBase');

  @override
  dynamic fromJson(Map<String, dynamic> json) {
    final _$actionInfo = _$_ObservableTrackBaseActionController.startAction(
        name: '_ObservableTrackBase.fromJson');
    try {
      return super.fromJson(json);
    } finally {
      _$_ObservableTrackBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
id: ${id},
group: ${group},
spotifyId: ${spotifyId},
user: ${user},
createdAt: ${createdAt},
spotifyTrack: ${spotifyTrack}
    ''';
  }
}
