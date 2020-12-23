import 'package:flutter/material.dart';

class ConditionedWidget extends StatelessWidget {
  final bool Function() condition;
  final Widget child;
  final Widget falseReturn;

  ///Widget to substitute using methods/ternary to render widgets
  ConditionedWidget(
      {@required this.condition, @required this.child, this.falseReturn});

  @override
  Widget build(BuildContext context) {
    return condition()
        ? child
        : falseReturn != null
            ? falseReturn
            : Container();
  }
}
