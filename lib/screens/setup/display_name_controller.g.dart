// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'display_name_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SetDisplayNameController on _SetDisplayNameControllerBase, Store {
  Computed<int> _$lengthComputed;

  @override
  int get length => (_$lengthComputed ??= Computed<int>(() => super.length,
          name: '_SetDisplayNameControllerBase.length'))
      .value;

  final _$displayNameAtom =
      Atom(name: '_SetDisplayNameControllerBase.displayName');

  @override
  String get displayName {
    _$displayNameAtom.reportRead();
    return super.displayName;
  }

  @override
  set displayName(String value) {
    _$displayNameAtom.reportWrite(value, super.displayName, () {
      super.displayName = value;
    });
  }

  @override
  String toString() {
    return '''
displayName: ${displayName},
length: ${length}
    ''';
  }
}
