// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_create_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CreateGroupController on _CreateGroupControllerBase, Store {
  Computed<bool> _$hasErrorComputed;

  @override
  bool get hasError =>
      (_$hasErrorComputed ??= Computed<bool>(() => super.hasError,
              name: '_CreateGroupControllerBase.hasError'))
          .value;
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

  final _$_errorAtom = Atom(name: '_CreateGroupControllerBase._error');

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
hasError: ${hasError},
groupName: ${groupName},
groupDesc: ${groupDesc}
    ''';
  }
}
