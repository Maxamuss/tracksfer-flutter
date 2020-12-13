import 'package:spotify/spotify.dart';

SpotifyApi spotifyInit() {
  var credentials = SpotifyApiCredentials(
    '549d7e8076914f5b91d4c00578bf604f',
    '827d0fc220ce493180afa504b2244356',
  );
  return SpotifyApi(credentials);
}
