// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feed_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$FeedController on _FeedControllerBase, Store {
  Computed<bool> _$hasErrorComputed;

  @override
  bool get hasError =>
      (_$hasErrorComputed ??= Computed<bool>(() => super.hasError,
              name: '_FeedControllerBase.hasError'))
          .value;
  Computed<bool> _$isLoadingComputed;

  @override
  bool get isLoading =>
      (_$isLoadingComputed ??= Computed<bool>(() => super.isLoading,
              name: '_FeedControllerBase.isLoading'))
          .value;
  Computed<ObservableList<FeedItem>> _$itemsComputed;

  @override
  ObservableList<FeedItem> get items =>
      (_$itemsComputed ??= Computed<ObservableList<FeedItem>>(() => super.items,
              name: '_FeedControllerBase.items'))
          .value;
  Computed<bool> _$isEmptyComputed;

  @override
  bool get isEmpty => (_$isEmptyComputed ??= Computed<bool>(() => super.isEmpty,
          name: '_FeedControllerBase.isEmpty'))
      .value;
  Computed<int> _$lengthComputed;

  @override
  int get length => (_$lengthComputed ??=
          Computed<int>(() => super.length, name: '_FeedControllerBase.length'))
      .value;

  final _$_feedItemsAtom = Atom(name: '_FeedControllerBase._feedItems');

  @override
  ObservableList<FeedItem> get _feedItems {
    _$_feedItemsAtom.reportRead();
    return super._feedItems;
  }

  @override
  set _feedItems(ObservableList<FeedItem> value) {
    _$_feedItemsAtom.reportWrite(value, super._feedItems, () {
      super._feedItems = value;
    });
  }

  final _$_loadingAtom = Atom(name: '_FeedControllerBase._loading');

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

  final _$_errorAtom = Atom(name: '_FeedControllerBase._error');

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

  final _$_getItemsAsyncAction = AsyncAction('_FeedControllerBase._getItems');

  @override
  Future<void> _getItems() {
    return _$_getItemsAsyncAction.run(() => super._getItems());
  }

  final _$_FeedControllerBaseActionController =
      ActionController(name: '_FeedControllerBase');

  @override
  void refresh() {
    final _$actionInfo = _$_FeedControllerBaseActionController.startAction(
        name: '_FeedControllerBase.refresh');
    try {
      return super.refresh();
    } finally {
      _$_FeedControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void _setError() {
    final _$actionInfo = _$_FeedControllerBaseActionController.startAction(
        name: '_FeedControllerBase._setError');
    try {
      return super._setError();
    } finally {
      _$_FeedControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
hasError: ${hasError},
isLoading: ${isLoading},
items: ${items},
isEmpty: ${isEmpty},
length: ${length}
    ''';
  }
}
