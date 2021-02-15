import 'package:flutter/material.dart';

class AnyInSliver extends StatelessWidget {
  final Widget child;

  AnyInSliver({@required this.child});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate((context, index) {
        return mainWidget();
      }, childCount: 1),
    );
  }

  Widget mainWidget() {
    return Container(
      width: double.infinity,
      child: child,
    );
  }
}
