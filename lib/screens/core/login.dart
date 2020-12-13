import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

import 'package:flutter_web_auth/flutter_web_auth.dart';

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
        url: Request.url + 'oauth/login/spotify/',
        callbackUrlScheme: 'tracksfer',
      );
      print(responseUri.toString());

      final authToken = Uri.parse(responseUri).queryParameters['authToken'];
      final accessToken = Uri.parse(responseUri).queryParameters['accessToken'];
      print(authToken);
      print(accessToken);

      setAuthToken(authToken);
      setSpotifyAccessToken(accessToken);
      _sendToFeed();
    } catch (e) {
      print(e.toString());
    }
  }

  void _sendToFeed() {
    Navigator.of(context)
        .pushNamedAndRemoveUntil('/home', (Route<dynamic> route) => false);
  }

  @override
  void initState() {
    getAuthToken().then((token) {
      if (token != null) {
        SchedulerBinding.instance.addPostFrameCallback((_) {
          _sendToFeed();
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
          onPressed: () => login(),
          child: Text('Login with Spotify'),
        ),
      ),
    );
  }
}
