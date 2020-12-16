import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

import 'package:flutter_web_auth/flutter_web_auth.dart';

import '../../screens/setup/set_display_name.dart';
import '../../services/auth.dart';
import '../../services/requests.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LoginWidget(),
    );
  }
}

class LoginWidget extends StatefulWidget {
  LoginWidget({Key key}) : super(key: key);

  @override
  _LoginWidgetState createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  void login() async {
    try {
      final responseUri = await FlutterWebAuth.authenticate(
        url: '${Request.url}oauth/login/spotify/',
        callbackUrlScheme: 'tracksfer',
      );
      print(responseUri.toString());

      final authToken = Uri.parse(responseUri).queryParameters['authToken'];
      final accessToken = Uri.parse(responseUri).queryParameters['accessToken'];
      final newUser =
          Uri.parse(responseUri).queryParameters['newUser'].toLowerCase() ==
              'true';
      final displayName = Uri.parse(responseUri).queryParameters['displayName'];
      print(authToken);
      print(accessToken);
      print(newUser);
      print(displayName);

      setAuthToken(authToken);
      setSpotifyAccessToken(accessToken);
      _sendToNextScreen(newUser, displayName);
    } on Exception catch (e) {
      print(e.toString());
    }
  }

  void _sendToNextScreen(newUser, displayName) {
    if (newUser) {
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(
            builder: (context) => SetDisplayNameScreen(displayName),
          ),
          (route) => false);
    } else {
      Navigator.of(context)
          .pushNamedAndRemoveUntil('/home', (route) => false);
    }
  }

  @override
  void initState() {
    getAuthToken().then((token) {
      if (token != null) {
        SchedulerBinding.instance.addPostFrameCallback((_) {
          _sendToNextScreen(false, '');
        });
      }
      super.initState();
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: RaisedButton(
          onPressed: login,
          child: const Text('Login with Spotify'),
        ),
      ),
    );
  }
}
