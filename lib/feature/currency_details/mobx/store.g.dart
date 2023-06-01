// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CurrencyDetailsStore on _CurrencyDetailsStore, Store {
  late final _$isLoadingAtom =
      Atom(name: '_CurrencyDetailsStore.isLoading', context: context);

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  late final _$currencyAtom =
      Atom(name: '_CurrencyDetailsStore.currency', context: context);

  @override
  Currency? get currency {
    _$currencyAtom.reportRead();
    return super.currency;
  }

  @override
  set currency(Currency? value) {
    _$currencyAtom.reportWrite(value, super.currency, () {
      super.currency = value;
    });
  }

  late final _$_CurrencyDetailsStoreActionController =
      ActionController(name: '_CurrencyDetailsStore', context: context);

  @override
  void setLoading(bool value) {
    final _$actionInfo = _$_CurrencyDetailsStoreActionController.startAction(
        name: '_CurrencyDetailsStore.setLoading');
    try {
      return super.setLoading(value);
    } finally {
      _$_CurrencyDetailsStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setCurrency(Currency value) {
    final _$actionInfo = _$_CurrencyDetailsStoreActionController.startAction(
        name: '_CurrencyDetailsStore.setCurrency');
    try {
      return super.setCurrency(value);
    } finally {
      _$_CurrencyDetailsStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isLoading: ${isLoading},
currency: ${currency}
    ''';
  }
}
