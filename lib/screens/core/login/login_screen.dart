import 'package:flutter/material.dart';

import '../../setup/set_display_name.dart';
import 'login_controller.dart';

class LoginScreen extends StatelessWidget {
  final _controller = LoginController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
      child: Center(
        child: RaisedButton(
          onPressed: () async {
            final loginInfo = await _controller.loginUser();
            if (loginInfo != null) {
              if (loginInfo['newUser']) {
                Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(
                        builder: (context) =>
                            SetDisplayNameScreen(loginInfo['displayName'])),
                    (Route<dynamic> route) => false);
              } else {
                Navigator.of(context).pushNamedAndRemoveUntil(
                    '/home', (Route<dynamic> route) => false);
              }
            }
          },
          child: Text('Login with Spotify'),
        ),
      ),
    ),
    );
  }
}
