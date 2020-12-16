import 'package:flutter/material.dart';

import '../../services/auth.dart';

class SettingsScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Settings'),
      ),
      body: Container(
        child: RaisedButton(
          onPressed: () => logout(context),
          child: const Text('Logout'),
        ),
      ),
    );
  }
}
