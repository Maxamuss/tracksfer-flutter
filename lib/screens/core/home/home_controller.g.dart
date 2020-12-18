// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeControllerBase, Store {
  Computed<String> _$appBarTitleComputed;

  @override
  String get appBarTitle =>
      (_$appBarTitleComputed ??= Computed<String>(() => super.appBarTitle,
              name: '_HomeControllerBase.appBarTitle'))
          .value;
  Computed<Widget> _$currentBodyComputed;

  @override
  Widget get currentBody =>
      (_$currentBodyComputed ??= Computed<Widget>(() => super.currentBody,
              name: '_HomeControllerBase.currentBody'))
          .value;
  Computed<List<Widget>> _$currentActionComputed;

  @override
  List<Widget> get currentAction => (_$currentActionComputed ??=
          Computed<List<Widget>>(() => super.currentAction,
              name: '_HomeControllerBase.currentAction'))
      .value;

  final _$currentIndexAtom = Atom(name: '_HomeControllerBase.currentIndex');

  @override
  int get currentIndex {
    _$currentIndexAtom.reportRead();
    return super.currentIndex;
  }

  @override
  set currentIndex(int value) {
    _$currentIndexAtom.reportWrite(value, super.currentIndex, () {
      super.currentIndex = value;
    });
  }

  final _$_HomeControllerBaseActionController =
      ActionController(name: '_HomeControllerBase');

  @override
  void onTabTapped(int index) {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase.onTabTapped');
    try {
      return super.onTabTapped(index);
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
currentIndex: ${currentIndex},
appBarTitle: ${appBarTitle},
currentBody: ${currentBody},
currentAction: ${currentAction}
    ''';
  }
}
