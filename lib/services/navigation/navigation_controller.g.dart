// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'navigation_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$NavigationController on NavigationBase, Store {
  Computed<NavigatorState> _$_navigatorComputed;

  @override
  NavigatorState get _navigator =>
      (_$_navigatorComputed ??= Computed<NavigatorState>(() => super._navigator,
              name: 'NavigationBase._navigator'))
          .value;

  final _$navigationKeyAtom = Atom(name: 'NavigationBase.navigationKey');

  @override
  GlobalKey<NavigatorState> get navigationKey {
    _$navigationKeyAtom.reportRead();
    return super.navigationKey;
  }

  @override
  set navigationKey(GlobalKey<NavigatorState> value) {
    _$navigationKeyAtom.reportWrite(value, super.navigationKey, () {
      super.navigationKey = value;
    });
  }

  @override
  String toString() {
    return '''
navigationKey: ${navigationKey}
    ''';
  }
}
