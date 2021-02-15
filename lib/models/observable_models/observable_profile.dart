import 'package:mobx/mobx.dart';
import 'package:tracksfer/services/utils.dart';
part 'observable_profile.g.dart';

class ObservableProfile = _ObservableProfileBase with _$ObservableProfile;

abstract class _ObservableProfileBase with Store {
  @observable
  String id;
  @observable
  String displayName;
  @observable
  String profileBio;
  @observable
  String profileImage;
  @observable
  String anthem1;
  @observable
  String anthem2;
  @observable
  String anthem3;
  @observable
  String artist1;
  @observable
  String artist2;
  @observable
  String artist3;

  _ObservableProfileBase({
    this.id,
    this.displayName,
    this.profileBio,
    this.profileImage,
    this.anthem1,
    this.anthem2,
    this.anthem3,
    this.artist1,
    this.artist2,
    this.artist3,
  });

  ObservableProfile factoryFromJson(Map<String, dynamic> json) {
    return ObservableProfile(
      id: json['id'],
      displayName: json['display_name'],
      profileBio: decodeString(json['profile_bio']),
      profileImage: json['profile_image'],
      anthem1: json['anthem1_id'],
      anthem2: json['anthem2_id'],
      anthem3: json['artist3_id'],
      artist1: json['artist1_id'],
      artist2: json['artist2_id'],
      artist3: json['artist3_id'],
    );
  }

  @action
  fromJson(Map<String, dynamic> json) {
    id = json['id'];
    displayName = json['display_name'];
    profileBio = decodeString(json['profile_bio']);
    profileImage = json['profile_image'];
    anthem1 = json['anthem1_id'];
    anthem2 = json['anthem2_id'];
    anthem3 = json['artist3_id'];
    artist1 = json['artist1_id'];
    artist2 = json['artist2_id'];
    artist3 = json['artist3_id'];
  }
}
