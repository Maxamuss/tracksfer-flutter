// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_detail_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$GroupDetailController on _GroupDetailControllerBase, Store {
  Computed<bool> _$hasErrorComputed;

  @override
  bool get hasError =>
      (_$hasErrorComputed ??= Computed<bool>(() => super.hasError,
              name: '_GroupDetailControllerBase.hasError'))
          .value;
  Computed<bool> _$isLoadingComputed;

  @override
  bool get isLoading =>
      (_$isLoadingComputed ??= Computed<bool>(() => super.isLoading,
              name: '_GroupDetailControllerBase.isLoading'))
          .value;
  Computed<ObservableList<ObservableTrack>> _$tracksComputed;

  @override
  ObservableList<ObservableTrack> get tracks => (_$tracksComputed ??=
          Computed<ObservableList<ObservableTrack>>(() => super.tracks,
              name: '_GroupDetailControllerBase.tracks'))
      .value;
  Computed<String> _$groupNameComputed;

  @override
  String get groupName =>
      (_$groupNameComputed ??= Computed<String>(() => super.groupName,
              name: '_GroupDetailControllerBase.groupName'))
          .value;
  Computed<bool> _$isEmptyComputed;

  @override
  bool get isEmpty => (_$isEmptyComputed ??= Computed<bool>(() => super.isEmpty,
          name: '_GroupDetailControllerBase.isEmpty'))
      .value;
  Computed<int> _$lengthComputed;

  @override
  int get length => (_$lengthComputed ??= Computed<int>(() => super.length,
          name: '_GroupDetailControllerBase.length'))
      .value;

  final _$_errorAtom = Atom(name: '_GroupDetailControllerBase._error');

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

  final _$_loadingAtom = Atom(name: '_GroupDetailControllerBase._loading');

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

  final _$_getTracksAsyncAction =
      AsyncAction('_GroupDetailControllerBase._getTracks');

  @override
  Future<void> _getTracks() {
    return _$_getTracksAsyncAction.run(() => super._getTracks());
  }

  final _$_GroupDetailControllerBaseActionController =
      ActionController(name: '_GroupDetailControllerBase');

  @override
  dynamic _setTrackList(ObservableList<ObservableTrack> newList) {
    final _$actionInfo = _$_GroupDetailControllerBaseActionController
        .startAction(name: '_GroupDetailControllerBase._setTrackList');
    try {
      return super._setTrackList(newList);
    } finally {
      _$_GroupDetailControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void refresh() {
    final _$actionInfo = _$_GroupDetailControllerBaseActionController
        .startAction(name: '_GroupDetailControllerBase.refresh');
    try {
      return super.refresh();
    } finally {
      _$_GroupDetailControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void _setError() {
    final _$actionInfo = _$_GroupDetailControllerBaseActionController
        .startAction(name: '_GroupDetailControllerBase._setError');
    try {
      return super._setError();
    } finally {
      _$_GroupDetailControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
hasError: ${hasError},
isLoading: ${isLoading},
tracks: ${tracks},
groupName: ${groupName},
isEmpty: ${isEmpty},
length: ${length}
    ''';
  }
}
