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
  Computed<ObservableList<ObservableUser>> _$usersComputed;

  @override
  ObservableList<ObservableUser> get users => (_$usersComputed ??=
          Computed<ObservableList<ObservableUser>>(() => super.users,
              name: '_GroupManagementControllerBase.users'))
      .value;
  Computed<ObservableList<ObservableUser>> _$pendingUsersComputed;

  @override
  ObservableList<ObservableUser> get pendingUsers => (_$pendingUsersComputed ??=
          Computed<ObservableList<ObservableUser>>(() => super.pendingUsers,
              name: '_GroupManagementControllerBase.pendingUsers'))
      .value;
  Computed<int> _$userListLengthComputed;

  @override
  int get userListLength =>
      (_$userListLengthComputed ??= Computed<int>(() => super.userListLength,
              name: '_GroupManagementControllerBase.userListLength'))
          .value;
  Computed<int> _$pendingUserListLengthComputed;

  @override
  int get pendingUserListLength => (_$pendingUserListLengthComputed ??=
          Computed<int>(() => super.pendingUserListLength,
              name: '_GroupManagementControllerBase.pendingUserListLength'))
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

  final _$exSliverControllerAtom =
      Atom(name: '_GroupManagementControllerBase.exSliverController');

  @override
  ExpandableSliverListController<dynamic> get exSliverController {
    _$exSliverControllerAtom.reportRead();
    return super.exSliverController;
  }

  @override
  set exSliverController(ExpandableSliverListController<dynamic> value) {
    _$exSliverControllerAtom.reportWrite(value, super.exSliverController, () {
      super.exSliverController = value;
    });
  }

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
  ObservableDetailedGroup get _group {
    _$_groupAtom.reportRead();
    return super._group;
  }

  @override
  set _group(ObservableDetailedGroup value) {
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

  final _$isLoadingAtom =
      Atom(name: '_GroupManagementControllerBase.isLoading');

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  final _$hasErrorAtom = Atom(name: '_GroupManagementControllerBase.hasError');

  @override
  bool get hasError {
    _$hasErrorAtom.reportRead();
    return super.hasError;
  }

  @override
  set hasError(bool value) {
    _$hasErrorAtom.reportWrite(value, super.hasError, () {
      super.hasError = value;
    });
  }

  final _$isCollapsedAtom =
      Atom(name: '_GroupManagementControllerBase.isCollapsed');

  @override
  bool get isCollapsed {
    _$isCollapsedAtom.reportRead();
    return super.isCollapsed;
  }

  @override
  set isCollapsed(bool value) {
    _$isCollapsedAtom.reportWrite(value, super.isCollapsed, () {
      super.isCollapsed = value;
    });
  }

  final _$_getUsersAsyncAction =
      AsyncAction('_GroupManagementControllerBase._getUsers');

  @override
  Future _getUsers() {
    return _$_getUsersAsyncAction.run(() => super._getUsers());
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
  dynamic toggleExpandable() {
    final _$actionInfo = _$_GroupManagementControllerBaseActionController
        .startAction(name: '_GroupManagementControllerBase.toggleExpandable');
    try {
      return super.toggleExpandable();
    } finally {
      _$_GroupManagementControllerBaseActionController.endAction(_$actionInfo);
    }
  }

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
  dynamic retryGetUsers() {
    final _$actionInfo = _$_GroupManagementControllerBaseActionController
        .startAction(name: '_GroupManagementControllerBase.retryGetUsers');
    try {
      return super.retryGetUsers();
    } finally {
      _$_GroupManagementControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic _setEditingError() {
    final _$actionInfo = _$_GroupManagementControllerBaseActionController
        .startAction(name: '_GroupManagementControllerBase._setEditingError');
    try {
      return super._setEditingError();
    } finally {
      _$_GroupManagementControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic _setError() {
    final _$actionInfo = _$_GroupManagementControllerBaseActionController
        .startAction(name: '_GroupManagementControllerBase._setError');
    try {
      return super._setError();
    } finally {
      _$_GroupManagementControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
exSliverController: ${exSliverController},
nameController: ${nameController},
descController: ${descController},
isEditing: ${isEditing},
isLoading: ${isLoading},
hasError: ${hasError},
isCollapsed: ${isCollapsed},
groupName: ${groupName},
groupDesc: ${groupDesc},
users: ${users},
pendingUsers: ${pendingUsers},
userListLength: ${userListLength},
pendingUserListLength: ${pendingUserListLength},
newName: ${newName},
newDesc: ${newDesc}
    ''';
  }
}
