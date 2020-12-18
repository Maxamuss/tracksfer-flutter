// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_list_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$GroupListController on _GroupListControllerBase, Store {
  Computed<bool> _$isEmptyComputed;

  @override
  bool get isEmpty => (_$isEmptyComputed ??= Computed<bool>(() => super.isEmpty,
          name: '_GroupListControllerBase.isEmpty'))
      .value;
  Computed<int> _$lengthComputed;

  @override
  int get length => (_$lengthComputed ??= Computed<int>(() => super.length,
          name: '_GroupListControllerBase.length'))
      .value;

  final _$groupListAtom = Atom(name: '_GroupListControllerBase.groupList');

  @override
  ObservableList<ObservableGroup> get groupList {
    _$groupListAtom.reportRead();
    return super.groupList;
  }

  @override
  set groupList(ObservableList<ObservableGroup> value) {
    _$groupListAtom.reportWrite(value, super.groupList, () {
      super.groupList = value;
    });
  }

  final _$isFirstLoadingAtom =
      Atom(name: '_GroupListControllerBase.isFirstLoading');

  @override
  bool get isFirstLoading {
    _$isFirstLoadingAtom.reportRead();
    return super.isFirstLoading;
  }

  @override
  set isFirstLoading(bool value) {
    _$isFirstLoadingAtom.reportWrite(value, super.isFirstLoading, () {
      super.isFirstLoading = value;
    });
  }

  final _$loadingAtom = Atom(name: '_GroupListControllerBase.loading');

  @override
  bool get loading {
    _$loadingAtom.reportRead();
    return super.loading;
  }

  @override
  set loading(bool value) {
    _$loadingAtom.reportWrite(value, super.loading, () {
      super.loading = value;
    });
  }

  final _$errorAtom = Atom(name: '_GroupListControllerBase.error');

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

  final _$getGroupListAsyncAction =
      AsyncAction('_GroupListControllerBase.getGroupList');

  @override
  Future<void> getGroupList() {
    return _$getGroupListAsyncAction.run(() => super.getGroupList());
  }

  final _$_GroupListControllerBaseActionController =
      ActionController(name: '_GroupListControllerBase');

  @override
  void loadGroupList() {
    final _$actionInfo = _$_GroupListControllerBaseActionController.startAction(
        name: '_GroupListControllerBase.loadGroupList');
    try {
      return super.loadGroupList();
    } finally {
      _$_GroupListControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic addGroup(ObservableGroup group) {
    final _$actionInfo = _$_GroupListControllerBaseActionController.startAction(
        name: '_GroupListControllerBase.addGroup');
    try {
      return super.addGroup(group);
    } finally {
      _$_GroupListControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void refresh() {
    final _$actionInfo = _$_GroupListControllerBaseActionController.startAction(
        name: '_GroupListControllerBase.refresh');
    try {
      return super.refresh();
    } finally {
      _$_GroupListControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void _setError() {
    final _$actionInfo = _$_GroupListControllerBaseActionController.startAction(
        name: '_GroupListControllerBase._setError');
    try {
      return super._setError();
    } finally {
      _$_GroupListControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
groupList: ${groupList},
isFirstLoading: ${isFirstLoading},
loading: ${loading},
error: ${error},
isEmpty: ${isEmpty},
length: ${length}
    ''';
  }
}
