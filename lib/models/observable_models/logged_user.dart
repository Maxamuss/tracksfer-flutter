import 'package:mobx/mobx.dart';
import 'package:tracksfer/models/User.dart';
import 'package:tracksfer/services/utils.dart';
part 'logged_user.g.dart';

class LoggedUser = _LoggedUserBase with _$LoggedUser;

abstract class _LoggedUserBase with Store implements User {
  @observable
  String username;
  @observable
  String profileBio;
  @observable
  String profileImage;

  _LoggedUserBase({this.username, this.profileBio, this.profileImage});

  LoggedUser factoryFromJson(Map<String, dynamic> json) {
    return LoggedUser(
        username: json['username'],
        profileBio: decodeString(json['profile_bio']),
        profileImage: json['profile_image']);
  }

  @action
  fromJson(Map<String, dynamic> json) {
    username = json['username'];
    profileBio = decodeString(json['profile_bio']);
    profileImage = json['profile_image'];
  }
}
