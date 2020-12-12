import 'package:dio/dio.dart';

import 'auth.dart';
import 'utils.dart';

class Request {
  static String get url {
    if (isInDebugMode) {
      return 'http://192.168.0.49:8000/';
    } else {
      return '';
    }
  }

  static dynamic _getHeaders(bool auth) async {
    var headers;
    if (auth) {
      final token = await getAuthToken();
      headers = {
        'Content-type': 'application/json',
        'Authorization': 'Token $token'
      };
    } else {
      headers = {
        'Content-type': 'application/json',
      };
    }
    return headers;
  }

  static Future get(String path, {bool auth = true}) async {
    final headers = await _getHeaders(auth);
    return Dio().get(
      url + path,
      options: Options(
        headers: headers,
        validateStatus: (status) {
          return true;
        },
      ),
    );
  }

  static Future post(String path, dynamic data, {bool auth = true}) async {
    final headers = await _getHeaders(auth);
    return Dio().post(
      url + path,
      data: data,
      options: Options(
        headers: headers,
        validateStatus: (status) {
          return true;
        },
      ),
    );
  }
}
