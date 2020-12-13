import 'package:flutter/material.dart';

class GroupCreateScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cr'),
      ),
      body: GroupCreateWidget(),
    );
  }
}

class GroupCreateWidget extends StatefulWidget {
  @override
  _GroupCreateWidgetState createState() => _GroupCreateWidgetState();
}

class _GroupCreateWidgetState extends State<GroupCreateWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('create'),
    );
  }
}
