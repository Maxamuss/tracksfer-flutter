// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_manage_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$GroupManagementController on _GroupManagementControllerBase, Store {
  Computed<String> _$groupNameComputed;

  @override
  String get groupName =>
      (_$groupNameComputed ??= Computed<String>(() => super.groupName,
              name: '_GroupManagementControllerBase.groupName'))
          .value;
  Computed<String> _$groupDescComputed;

  @override
  String get groupDesc =>
      (_$groupDescComputed ??= Computed<String>(() => super.groupDesc,
              name: '_GroupManagementControllerBase.groupDesc'))
          .value;
  Computed<String> _$newNameComputed;

  @override
  String get newName =>
      (_$newNameComputed ??= Computed<String>(() => super.newName,
              name: '_GroupManagementControllerBase.newName'))
          .value;
  Computed<String> _$newDescComputed;

  @override
  String get newDesc =>
      (_$newDescComputed ??= Computed<String>(() => super.newDesc,
              name: '_GroupManagementControllerBase.newDesc'))
          .value;

  final _$nameControllerAtom =
      Atom(name: '_GroupManagementControllerBase.nameController');

  @override
  TextEditingController get nameController {
    _$nameControllerAtom.reportRead();
    return super.nameController;
  }

  @override
  set nameController(TextEditingController value) {
    _$nameControllerAtom.reportWrite(value, super.nameController, () {
      super.nameController = value;
    });
  }

  final _$descControllerAtom =
      Atom(name: '_GroupManagementControllerBase.descController');

  @override
  TextEditingController get descController {
    _$descControllerAtom.reportRead();
    return super.descController;
  }

  @override
  set descController(TextEditingController value) {
    _$descControllerAtom.reportWrite(value, super.descController, () {
      super.descController = value;
    });
  }

  final _$_groupAtom = Atom(name: '_GroupManagementControllerBase._group');

  @override
  ObservableGroup get _group {
    _$_groupAtom.reportRead();
    return super._group;
  }

  @override
  set _group(ObservableGroup value) {
    _$_groupAtom.reportWrite(value, super._group, () {
      super._group = value;
    });
  }

  final _$isEditingAtom =
      Atom(name: '_GroupManagementControllerBase.isEditing');

  @override
  bool get isEditing {
    _$isEditingAtom.reportRead();
    return super.isEditing;
  }

  @override
  set isEditing(bool value) {
    _$isEditingAtom.reportWrite(value, super.isEditing, () {
      super.isEditing = value;
    });
  }

  final _$saveChangesAsyncAction =
      AsyncAction('_GroupManagementControllerBase.saveChanges');

  @override
  Future saveChanges() {
    return _$saveChangesAsyncAction.run(() => super.saveChanges());
  }

  final _$_GroupManagementControllerBaseActionController =
      ActionController(name: '_GroupManagementControllerBase');

  @override
  dynamic startEditing() {
    final _$actionInfo = _$_GroupManagementControllerBaseActionController
        .startAction(name: '_GroupManagementControllerBase.startEditing');
    try {
      return super.startEditing();
    } finally {
      _$_GroupManagementControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
nameController: ${nameController},
descController: ${descController},
isEditing: ${isEditing},
groupName: ${groupName},
groupDesc: ${groupDesc},
newName: ${newName},
newDesc: ${newDesc}
    ''';
  }
}
