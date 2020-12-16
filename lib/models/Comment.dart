import 'package:tracksfer/models/observable_models/logged_user.dart';

abstract class Comment {
  String id;
  String trackId;
  LoggedUser user;
  DateTime createdAt;
  String body;
}
