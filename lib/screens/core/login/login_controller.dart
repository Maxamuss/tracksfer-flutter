import 'package:flutter_web_auth/flutter_web_auth.dart';
import 'package:mobx/mobx.dart';
import 'package:tracksfer/services/auth.dart';
import 'package:tracksfer/services/requests.dart';

part 'login_controller.g.dart';

class LoginController = _LoginControllerBase with _$LoginController;

abstract class _LoginControllerBase with Store {
  Future<Map<String, dynamic>> loginUser() async {
    try {
      final responseUri = await FlutterWebAuth.authenticate(
        url: Request.url + 'oauth/login/spotify/',
        callbackUrlScheme: 'tracksfer',
      );
      final authToken = Uri.parse(responseUri).queryParameters['authToken'];
      final accessToken = Uri.parse(responseUri).queryParameters['accessToken'];
      final newUser =
          Uri.parse(responseUri).queryParameters['newUser'].toLowerCase() ==
              'true';
      final displayName = Uri.parse(responseUri).queryParameters['displayName'];

      setAuthToken(authToken);
      setSpotifyAccessToken(accessToken);
      
      return {
        'newUser': newUser,
        'displayName': displayName,
      };
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}
