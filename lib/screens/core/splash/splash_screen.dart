import 'package:flutter/material.dart';
import 'package:tracksfer/locator/locator.dart';
import 'package:tracksfer/services/auth.dart';
import 'package:tracksfer/services/navigation/navigation_controller.dart';
import 'package:tracksfer/services/navigation/navigation_routes.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({Key key}) : super(key: key);
  final navigator = G.get<NavigationController>();

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 5), () => _sendToNextScreen());

    return Scaffold(
      body: Container(
        color: Color.fromRGBO(18, 18, 18, 100),
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        alignment: Alignment.center,
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 50,
            ),
            Text(
              "Tracksfer",
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
            SizedBox(
              height: 120,
            ),
            // Image.asset(
            //   "assets/.png",
            //   width: MediaQuery.of(context).size.width / 3,
            // ),
            // SizedBox(
            //   height: 35,
            // ),
            Container(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 40.0,
                      height: 40.0,
                      child: CircularProgressIndicator(
                        valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                        strokeWidth: 5.0,
                      ),
                    ),
                  ]),
            ),
          ],
        ),
      ),
    );
  }

  void _sendToNextScreen() async {
    var token = await getAuthToken();
    if (token == null) {
      navigator.replaceWith(LOGIN_ROUTE);
    } else {
      navigator.replaceWith(HOME_ROUTE);
    }
  }
}
