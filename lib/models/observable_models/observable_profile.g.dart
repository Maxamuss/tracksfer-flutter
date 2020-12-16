// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'observable_profile.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ObservableProfile on _ObservableProfileBase, Store {
  final _$usernameAtom = Atom(name: '_ObservableProfileBase.username');

  @override
  String get username {
    _$usernameAtom.reportRead();
    return super.username;
  }

  @override
  set username(String value) {
    _$usernameAtom.reportWrite(value, super.username, () {
      super.username = value;
    });
  }

  final _$profileBioAtom = Atom(name: '_ObservableProfileBase.profileBio');

  @override
  String get profileBio {
    _$profileBioAtom.reportRead();
    return super.profileBio;
  }

  @override
  set profileBio(String value) {
    _$profileBioAtom.reportWrite(value, super.profileBio, () {
      super.profileBio = value;
    });
  }

  final _$profileImageAtom = Atom(name: '_ObservableProfileBase.profileImage');

  @override
  String get profileImage {
    _$profileImageAtom.reportRead();
    return super.profileImage;
  }

  @override
  set profileImage(String value) {
    _$profileImageAtom.reportWrite(value, super.profileImage, () {
      super.profileImage = value;
    });
  }

  final _$anthem1Atom = Atom(name: '_ObservableProfileBase.anthem1');

  @override
  String get anthem1 {
    _$anthem1Atom.reportRead();
    return super.anthem1;
  }

  @override
  set anthem1(String value) {
    _$anthem1Atom.reportWrite(value, super.anthem1, () {
      super.anthem1 = value;
    });
  }

  final _$anthem2Atom = Atom(name: '_ObservableProfileBase.anthem2');

  @override
  String get anthem2 {
    _$anthem2Atom.reportRead();
    return super.anthem2;
  }

  @override
  set anthem2(String value) {
    _$anthem2Atom.reportWrite(value, super.anthem2, () {
      super.anthem2 = value;
    });
  }

  final _$anthem3Atom = Atom(name: '_ObservableProfileBase.anthem3');

  @override
  String get anthem3 {
    _$anthem3Atom.reportRead();
    return super.anthem3;
  }

  @override
  set anthem3(String value) {
    _$anthem3Atom.reportWrite(value, super.anthem3, () {
      super.anthem3 = value;
    });
  }

  final _$artist1Atom = Atom(name: '_ObservableProfileBase.artist1');

  @override
  String get artist1 {
    _$artist1Atom.reportRead();
    return super.artist1;
  }

  @override
  set artist1(String value) {
    _$artist1Atom.reportWrite(value, super.artist1, () {
      super.artist1 = value;
    });
  }

  final _$artist2Atom = Atom(name: '_ObservableProfileBase.artist2');

  @override
  String get artist2 {
    _$artist2Atom.reportRead();
    return super.artist2;
  }

  @override
  set artist2(String value) {
    _$artist2Atom.reportWrite(value, super.artist2, () {
      super.artist2 = value;
    });
  }

  final _$artist3Atom = Atom(name: '_ObservableProfileBase.artist3');

  @override
  String get artist3 {
    _$artist3Atom.reportRead();
    return super.artist3;
  }

  @override
  set artist3(String value) {
    _$artist3Atom.reportWrite(value, super.artist3, () {
      super.artist3 = value;
    });
  }

  final _$_ObservableProfileBaseActionController =
      ActionController(name: '_ObservableProfileBase');

  @override
  dynamic fromJson(Map<String, dynamic> json) {
    final _$actionInfo = _$_ObservableProfileBaseActionController.startAction(
        name: '_ObservableProfileBase.fromJson');
    try {
      return super.fromJson(json);
    } finally {
      _$_ObservableProfileBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
username: ${username},
profileBio: ${profileBio},
profileImage: ${profileImage},
anthem1: ${anthem1},
anthem2: ${anthem2},
anthem3: ${anthem3},
artist1: ${artist1},
artist2: ${artist2},
artist3: ${artist3}
    ''';
  }
}
