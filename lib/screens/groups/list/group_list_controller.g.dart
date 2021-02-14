// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_list_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$GroupListController on _GroupListControllerBase, Store {
  Computed<bool> _$hasErrorComputed;

  @override
  bool get hasError =>
      (_$hasErrorComputed ??= Computed<bool>(() => super.hasError,
              name: '_GroupListControllerBase.hasError'))
          .value;
  Computed<bool> _$isLoadingComputed;

  @override
  bool get isLoading =>
      (_$isLoadingComputed ??= Computed<bool>(() => super.isLoading,
              name: '_GroupListControllerBase.isLoading'))
          .value;
  Computed<ObservableList<ObservableGroup>> _$groupsComputed;

  @override
  ObservableList<ObservableGroup> get groups => (_$groupsComputed ??=
          Computed<ObservableList<ObservableGroup>>(() => super.groups,
              name: '_GroupListControllerBase.groups'))
      .value;
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

  final _$_isFirstLoadingAtom =
      Atom(name: '_GroupListControllerBase._isFirstLoading');

  @override
  bool get _isFirstLoading {
    _$_isFirstLoadingAtom.reportRead();
    return super._isFirstLoading;
  }

  @override
  set _isFirstLoading(bool value) {
    _$_isFirstLoadingAtom.reportWrite(value, super._isFirstLoading, () {
      super._isFirstLoading = value;
    });
  }

  final _$_loadingAtom = Atom(name: '_GroupListControllerBase._loading');

  @override
  bool get _loading {
    _$_loadingAtom.reportRead();
    return super._loading;
  }

  @override
  set _loading(bool value) {
    _$_loadingAtom.reportWrite(value, super._loading, () {
      super._loading = value;
    });
  }

  final _$_errorAtom = Atom(name: '_GroupListControllerBase._error');

  @override
  bool get _error {
    _$_errorAtom.reportRead();
    return super._error;
  }

  @override
  set _error(bool value) {
    _$_errorAtom.reportWrite(value, super._error, () {
      super._error = value;
    });
  }

  final _$_getGroupListAsyncAction =
      AsyncAction('_GroupListControllerBase._getGroupList');

  @override
  Future<void> _getGroupList() {
    return _$_getGroupListAsyncAction.run(() => super._getGroupList());
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
  dynamic replaceGroup(ObservableGroup group) {
    final _$actionInfo = _$_GroupListControllerBaseActionController.startAction(
        name: '_GroupListControllerBase.replaceGroup');
    try {
      return super.replaceGroup(group);
    } finally {
      _$_GroupListControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic _setGroupList(ObservableList<ObservableGroup> groups) {
    final _$actionInfo = _$_GroupListControllerBaseActionController.startAction(
        name: '_GroupListControllerBase._setGroupList');
    try {
      return super._setGroupList(groups);
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
hasError: ${hasError},
isLoading: ${isLoading},
groups: ${groups},
isEmpty: ${isEmpty},
length: ${length}
    ''';
  }
}
