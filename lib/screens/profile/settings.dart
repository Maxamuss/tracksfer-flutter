import 'package:flutter/material.dart';

import '../../services/auth.dart';

class SettingsScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
        onPressed: () => logout(context),
        child: Text('Logout'),
      ),
    );
  }
}
