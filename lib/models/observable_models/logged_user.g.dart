// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'logged_user.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$LoggedUser on _LoggedUserBase, Store {
  final _$usernameAtom = Atom(name: '_LoggedUserBase.username');

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

  final _$profileBioAtom = Atom(name: '_LoggedUserBase.profileBio');

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

  final _$profileImageAtom = Atom(name: '_LoggedUserBase.profileImage');

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

  final _$_LoggedUserBaseActionController =
      ActionController(name: '_LoggedUserBase');

  @override
  dynamic fromJson(Map<String, dynamic> json) {
    final _$actionInfo = _$_LoggedUserBaseActionController.startAction(
        name: '_LoggedUserBase.fromJson');
    try {
      return super.fromJson(json);
    } finally {
      _$_LoggedUserBaseActionController.endAction(_$actionInfo);
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
