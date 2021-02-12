import 'package:flutter/material.dart';
import 'package:tracksfer/services/auth.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: GestureDetector(
          child: Text('logout'),
          onTap: () => logout(),
        ),
      ),
    );
  }
}
