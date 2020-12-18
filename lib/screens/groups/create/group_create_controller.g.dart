// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_create_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CreateGroupController on _CreateGroupControllerBase, Store {
  Computed<String> _$groupNameComputed;

  @override
  String get groupName =>
      (_$groupNameComputed ??= Computed<String>(() => super.groupName,
              name: '_CreateGroupControllerBase.groupName'))
          .value;
  Computed<String> _$groupDescComputed;

  @override
  String get groupDesc =>
      (_$groupDescComputed ??= Computed<String>(() => super.groupDesc,
              name: '_CreateGroupControllerBase.groupDesc'))
          .value;

  final _$groupNameControllerAtom =
      Atom(name: '_CreateGroupControllerBase.groupNameController');

  @override
  TextEditingController get groupNameController {
    _$groupNameControllerAtom.reportRead();
    return super.groupNameController;
  }

  @override
  set groupNameController(TextEditingController value) {
    _$groupNameControllerAtom.reportWrite(value, super.groupNameController, () {
      super.groupNameController = value;
    });
  }

  final _$groupDescControllerAtom =
      Atom(name: '_CreateGroupControllerBase.groupDescController');

  @override
  TextEditingController get groupDescController {
    _$groupDescControllerAtom.reportRead();
    return super.groupDescController;
  }

  @override
  set groupDescController(TextEditingController value) {
    _$groupDescControllerAtom.reportWrite(value, super.groupDescController, () {
      super.groupDescController = value;
    });
  }

  final _$errorAtom = Atom(name: '_CreateGroupControllerBase.error');

  @override
  bool get error {
    _$errorAtom.reportRead();
    return super.error;
  }

  @override
  set error(bool value) {
    _$errorAtom.reportWrite(value, super.error, () {
      super.error = value;
    });
  }

  final _$createGroupAsyncAction =
      AsyncAction('_CreateGroupControllerBase.createGroup');

  @override
  Future<void> createGroup() {
    return _$createGroupAsyncAction.run(() => super.createGroup());
  }

  final _$_CreateGroupControllerBaseActionController =
      ActionController(name: '_CreateGroupControllerBase');

  @override
  dynamic refresh() {
    final _$actionInfo = _$_CreateGroupControllerBaseActionController
        .startAction(name: '_CreateGroupControllerBase.refresh');
    try {
      return super.refresh();
    } finally {
      _$_CreateGroupControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
groupNameController: ${groupNameController},
groupDescController: ${groupDescController},
error: ${error},
groupName: ${groupName},
groupDesc: ${groupDesc}
    ''';
  }
}
