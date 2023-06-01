import 'package:exchangerates/core/models/currency/currency.dart';
import 'package:exchangerates/core/root/observable_store.dart';
import 'package:injectable/injectable.dart';

import 'middleware.dart';
import 'reducers.dart';

class CurrencyState extends ObservableState {
  //
  final List<Currency> list;

  final action;

  CurrencyState({
    required this.list,
    required this.action,
    isLoading = false,
    errorMessage,
    isActionLoading = false,
  }) : super(
          isLoading: isLoading,
          errorMessage: errorMessage,
        );

  factory CurrencyState.init() => CurrencyState(
        list: [],
        action: null,
      );
}

@singleton
class CurrencyStore extends ObservableStore<CurrencyState, dynamic> {
  CurrencyStore()
      : super(
          currencyReducer,
          CurrencyState.init(),
          [currencyMiddleware],
        );
}
