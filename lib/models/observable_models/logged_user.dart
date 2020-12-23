import 'package:mobx/mobx.dart';
import 'package:tracksfer/models/User.dart';
import 'package:tracksfer/services/utils.dart';
part 'logged_user.g.dart';

class ObservableUser = _ObservableUserBase with _$ObservableUser;

abstract class _ObservableUserBase with Store implements User {
  @observable
  String username;
  @observable
  String profileBio;
  @observable
  String profileImage;

  _ObservableUserBase({this.username, this.profileBio, this.profileImage});

  ObservableUser factoryFromJson(Map<String, dynamic> json) {
    return ObservableUser(
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
