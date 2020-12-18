import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'navigation_controller.g.dart';

class NavigationController = NavigationBase with _$NavigationController;

abstract class NavigationBase with Store {
  @observable
  GlobalKey<NavigatorState> navigationKey = GlobalKey<NavigatorState>();

  @computed
  NavigatorState get _navigator => navigationKey.currentState;

  void push(String route, {dynamic arguments}) {
    _navigator.pushNamed(route, arguments: arguments);
  }

  void replaceWith(String route, {dynamic arguments}) {
    _navigator.pushReplacementNamed(route, arguments: arguments);
  }

  void popUntil(String route) {
    _navigator.popUntil(ModalRoute.withName(route));
  }

  void pop() {
    _navigator.pop();
  }
}
