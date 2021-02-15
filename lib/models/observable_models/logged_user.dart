import 'package:mobx/mobx.dart';
import 'package:tracksfer/models/User.dart';
import 'package:tracksfer/services/utils.dart';
part 'logged_user.g.dart';

class ObservableUser = _ObservableUserBase with _$ObservableUser;

abstract class _ObservableUserBase with Store implements User {
  @observable
  String id;
  @observable
  String displayName;
  @observable
  String profileBio;
  @observable
  String profileImage;

  _ObservableUserBase({
    this.id,
    this.displayName,
    this.profileBio,
    this.profileImage,
  });

  ObservableUser factoryFromJson(Map<String, dynamic> json) {
    return ObservableUser(
      id: json['id'],
      displayName: json['display_name'],
      profileBio: decodeString(json['profile_bio']),
      profileImage: json['profile_image'],
    );
  }

  @action
  fromJson(Map<String, dynamic> json) {
    id = json['id'];
    displayName = json['display_name'];
    profileBio = decodeString(json['profile_bio']);
    profileImage = json['profile_image'];
  }
}
