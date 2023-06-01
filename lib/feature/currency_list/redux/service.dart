import 'package:exchangerates/core/models/currency/currency.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

import 'actions.dart';
import 'store.dart';

@singleton
class CurrencyService {
  //
  final CurrencyStore _store;

  //

  final _loading = BehaviorSubject<bool>.seeded(false);
  BehaviorSubject<bool> get loading$ => _loading;
  bool get loading => loading$.value;

  //

  final _list = BehaviorSubject<List<Currency>>.seeded([]);
  BehaviorSubject<List<Currency>> get list$ => _list;
  List<Currency> get list => list$.value;

  //

  CurrencyService(this._store) {
    _store.state$
        .map((state) => state.isLoading)
        .where((data) => data != loading)
        .pipe(_loading);

    _store.state$
        .map((state) => state.list)
        .where((data) => data != list)
        .pipe(_list);
  }

  //

  void dispose() {
    _loading.close();
    _list.close();
  }

  //

  void fetch() {
    _store.dispatch(FetchCurrenciesAction());
  }

  void resetTable() {
    _store.dispatch(ClearCurrenciesAction());
  }
}
