import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:tracksfer/locator/locator.dart';
import 'package:tracksfer/services/navigation/navigation_controller.dart';
import 'package:tracksfer/services/navigation/navigation_routes.dart';

void setAuthToken(String token) async {
  final storage = FlutterSecureStorage();
  await storage.write(key: 'authToken', value: token);
}

Future<String> getAuthToken() async {
  final storage = FlutterSecureStorage();
  final token = await storage.read(key: 'authToken');
  return token;
}

void setSpotifyAccessToken(String token) async {
  final storage = FlutterSecureStorage();
  await storage.write(key: 'spotifyAccessToken', value: token);
}

Future<String> getSpotifyAccessToken() async {
  final storage = FlutterSecureStorage();
  final token = await storage.read(key: 'spotifyAccessToken');
  return token;
}

void logout() async {
  final storage = FlutterSecureStorage();
  await storage.deleteAll();
  G.get<NavigationController>().popUntil(LOGIN_ROUTE);
}
