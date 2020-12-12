import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_web_auth/flutter_web_auth.dart';

import 'package:spotify/spotify.dart';
import 'package:tracksfer/services/auth.dart';

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
    // // Present the dialog to the user
    // final result = await FlutterWebAuth.authenticate(
    //   url: Request.url + 'oauth/login/spotify/',
    //   callbackUrlScheme: 'Request.url',
    // );
    // // Extract token from resulting url
    // final token = Uri.parse(result).queryParameters['token'];
    // print('token: $token');
    // final credentials = SpotifyApiCredentials(
    //   '549d7e8076914f5b91d4c00578bf604f',
    //   '827d0fc220ce493180afa504b2244356',
    // );
    // final grant = SpotifyApi.authorizationCodeGrant(credentials);

    // The URI to redirect to after the user grants or denies permission. It must
    // be in your Spotify application's Redirect URI whitelist. This URI can
    // either be a web address pointing to an authorization server or a fabricated
    // URI that allows the client device to function as an authorization server.
    // final redirectUri = 'tracksfer:/';
    // final state = 'testing';

    // // See https://developer.spotify.com/documentation/general/guides/scopes/
    // // for a complete list of these Spotify authorization permissions. If no
    // // scopes are specified, only public Spotify information will be available.
    // final scopes = ['user-read-email', 'user-library-read'];

    // final authUri = grant.getAuthorizationUrl(
    //   Uri.parse(redirectUri),
    //   scopes: scopes, // scopes are optional
    //   state: state,
    // );

    // print(authUri.toString());

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
      print('****************************************ERROR');
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
