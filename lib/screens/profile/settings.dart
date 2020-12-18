import 'package:flutter/material.dart';

import '../../services/auth.dart';

class SettingsScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Settings'),
      ),
      body: Container(
        child: RaisedButton(
          onPressed: () => logout(),
          child: Text('Logout'),
        ),
      ),
    );
  }
}
