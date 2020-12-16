import 'dart:convert';

bool get isInDebugMode {
  final inDebugMode = false;
  assert(inDebugMode);
  return inDebugMode;
}

// Used to render emojis
String decodeString(String string) {
  final bytes = string.codeUnits;
  return utf8.decode(bytes);
}
