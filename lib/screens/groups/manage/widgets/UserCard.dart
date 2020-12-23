import 'package:flutter/material.dart';
import 'package:tracksfer/models/observable_models/logged_user.dart';

class UserCard extends StatelessWidget {
  final ObservableUser _user;

  UserCard(this._user);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5),
      child: Card(
        elevation: 2,
        color: Color(0xff1D1D1D),
        child: ListTile(
          title: Text(
            _user.username,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
