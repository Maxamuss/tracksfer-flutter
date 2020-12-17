import 'dart:convert';

bool get isInDebugMode {
  bool inDebugMode = false;
  assert(inDebugMode = true);
  return inDebugMode;
}

/// Used to render emojis
String decodeString(String string) {
  List<int> bytes = string.codeUnits;
  return utf8.decode(bytes);
}
