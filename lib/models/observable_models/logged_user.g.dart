// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'logged_user.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ObservableUser on _ObservableUserBase, Store {
  final _$idAtom = Atom(name: '_ObservableUserBase.id');

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

  final _$displayNameAtom = Atom(name: '_ObservableUserBase.displayName');

  @override
  String get displayName {
    _$displayNameAtom.reportRead();
    return super.displayName;
  }

  @override
  set displayName(String value) {
    _$displayNameAtom.reportWrite(value, super.displayName, () {
      super.displayName = value;
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
id: ${id},
displayName: ${displayName},
profileBio: ${profileBio},
profileImage: ${profileImage}
    ''';
  }
}
