import 'package:flutter/material.dart';
import 'package:tracksfer/models/observable_models/logged_user.dart';

class UserCard extends StatelessWidget {
  final ObservableUser user;
  final VoidCallback onTap;

  UserCard({@required this.user, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 5),
        child: Builder(builder: (context) {
          if (onTap == null) {
            return Card(
              elevation: 2,
              color: Color(0xff1D1D1D),
              child: ListTile(
                title: Text(
                  user.username,
                  style: TextStyle(color: Colors.white),
                ),
              ),
            );
          } else {
            return GestureDetector(
              onTap: onTap,
              child: Card(
                elevation: 2,
                color: Color(0xff1D1D1D),
                child: ListTile(
                  title: Text(
                    user.username,
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            );
          }
        }));
  }
}
