// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'logged_user.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ObservableUser on _ObservableUserBase, Store {
  final _$usernameAtom = Atom(name: '_ObservableUserBase.username');

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

  final _$profileBioAtom = Atom(name: '_ObservableUserBase.profileBio');

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

  final _$profileImageAtom = Atom(name: '_ObservableUserBase.profileImage');

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

  final _$_ObservableUserBaseActionController =
      ActionController(name: '_ObservableUserBase');

  @override
  dynamic fromJson(Map<String, dynamic> json) {
    final _$actionInfo = _$_ObservableUserBaseActionController.startAction(
        name: '_ObservableUserBase.fromJson');
    try {
      return super.fromJson(json);
    } finally {
      _$_ObservableUserBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
username: ${username},
profileBio: ${profileBio},
profileImage: ${profileImage}
    ''';
  }
}
