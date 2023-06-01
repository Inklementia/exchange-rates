// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$SettingsStore on _SettingsStore, Store {
  late final _$isLocationEnabledAtom =
      Atom(name: '_SettingsStore.isLocationEnabled', context: context);

  @override
  bool get isLocationEnabled {
    _$isLocationEnabledAtom.reportRead();
    return super.isLocationEnabled;
  }

  @override
  set isLocationEnabled(bool value) {
    _$isLocationEnabledAtom.reportWrite(value, super.isLocationEnabled, () {
      super.isLocationEnabled = value;
    });
  }

  late final _$locationDataAtom =
      Atom(name: '_SettingsStore.locationData', context: context);

  @override
  LocationData? get locationData {
    _$locationDataAtom.reportRead();
    return super.locationData;
  }

  @override
  set locationData(LocationData? value) {
    _$locationDataAtom.reportWrite(value, super.locationData, () {
      super.locationData = value;
    });
  }

  late final _$_SettingsStoreActionController =
      ActionController(name: '_SettingsStore', context: context);

  @override
  void setIsLocationEnabled(bool value) {
    final _$actionInfo = _$_SettingsStoreActionController.startAction(
        name: '_SettingsStore.setIsLocationEnabled');
    try {
      return super.setIsLocationEnabled(value);
    } finally {
      _$_SettingsStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setLocationData(LocationData? value) {
    final _$actionInfo = _$_SettingsStoreActionController.startAction(
        name: '_SettingsStore.setLocationData');
    try {
      return super.setLocationData(value);
    } finally {
      _$_SettingsStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isLocationEnabled: ${isLocationEnabled},
locationData: ${locationData}
    ''';
  }
}
