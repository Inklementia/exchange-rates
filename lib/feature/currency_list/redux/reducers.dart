// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'actions.dart';
import 'store.dart';

CurrencyState currencyReducer(CurrencyState state, action) {
  debugPrint('currencyReducer: New Action $action');

  if (action is FetchCurrenciesAction)
    return CurrencyState(
      list: state.list,
      isLoading: true,
      action: action,
    );

  if (action is UpdateCurrenciesRatesAction)
    return CurrencyState(
      list: state.list,
      isLoading: true,
      action: action,
    );

  if (action is UpdateCurrenciesAction)
    return CurrencyState(
      list: action.list,
      action: action,
    );

  if (action is PopulateCurrenciesAction)
    return CurrencyState(
      list: action.list,
      isLoading: true,
      action: action,
    );

  if (action is ErrorCurrenciesAction)
    return CurrencyState(
      list: state.list,
      errorMessage: action.errorMessage,
      action: action,
    );

  if (action is ClearCurrenciesAction)
    return CurrencyState(
      list: [],
      isLoading: true,
      action: action,
    );

  return state;
}
