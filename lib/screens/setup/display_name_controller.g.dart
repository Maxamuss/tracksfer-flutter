// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'display_name_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SetDisplayNameController on _SetDisplayNameControllerBase, Store {
  Computed<String> _$usernameComputed;

  @override
  String get username =>
      (_$usernameComputed ??= Computed<String>(() => super.username,
              name: '_SetDisplayNameControllerBase.username'))
          .value;
  Computed<int> _$lengthComputed;

  @override
  int get length => (_$lengthComputed ??= Computed<int>(() => super.length,
          name: '_SetDisplayNameControllerBase.length'))
      .value;

  final _$textControllerAtom =
      Atom(name: '_SetDisplayNameControllerBase.textController');

  @override
  TextEditingController get textController {
    _$textControllerAtom.reportRead();
    return super.textController;
  }

  @override
  set textController(TextEditingController value) {
    _$textControllerAtom.reportWrite(value, super.textController, () {
      super.textController = value;
    });
  }

  @override
  String toString() {
    return '''
textController: ${textController},
username: ${username},
length: ${length}
    ''';
  }
}
