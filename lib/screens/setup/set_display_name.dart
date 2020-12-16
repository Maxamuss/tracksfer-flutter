import 'package:flutter/material.dart';

class SetDisplayNameScreen extends StatelessWidget {
  final String displayName;

  SetDisplayNameScreen(this.displayName);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SetDisplayNameWidget(displayName),
    );
  }
}

class SetDisplayNameWidget extends StatefulWidget {
  final String displayName;

  SetDisplayNameWidget(this.displayName);

  @override
  _SetDisplayNameWidgetState createState() => _SetDisplayNameWidgetState();
}

class _SetDisplayNameWidgetState extends State<SetDisplayNameWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Text(''),
    );
  }
}
