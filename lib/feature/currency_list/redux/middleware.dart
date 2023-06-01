import 'package:exchangerates/core/navigator/routes_constants.dart';
import 'package:exchangerates/core/repository/currency_repository.dart';
import 'package:exchangerates/core/root/injector.dart';
import 'package:exchangerates/core/root/navigator_service.dart';
import 'package:exchangerates/utils/collection_seeder.dart';
import 'package:flutter/material.dart';

import 'package:redux/redux.dart';

import 'actions.dart';
import 'store.dart';

void currencyMiddleware(
    Store<CurrencyState> store, action, NextDispatcher next) {
  debugPrint('currencyMiddleware: New Action ${action.toString()}');

  final repository = injector<CurrencyRepository>();

  if (action is FetchCurrenciesAction)
    repository.fetch().then((data) {
      store.dispatch(UpdateCurrenciesAction(data));
      injector<NavigatorService>().pushNamed(MyRoutes.currencyList);
    }).catchError((error) {
      store.dispatch(ErrorCurrenciesAction(error.toString()));
    });

  if (action is UpdateCurrenciesRatesAction)
    repository.updateAllRates().then((data) {
      store.dispatch(FetchCurrenciesAction());
    }).catchError((error) {
      store.dispatch(ErrorCurrenciesAction(error.toString()));
    });

  if (action is ClearCurrenciesAction) {
    repository.clearCollection().then((data) {
      store.dispatch(PopulateCurrenciesAction(CollectionSeeder.currencies));
    }).catchError((error) {
      store.dispatch(ErrorCurrenciesAction(error.toString()));
    });
  }

  if (action is PopulateCurrenciesAction) {
    repository.populateCollection(action.list).then((data) {
      store.dispatch(FetchCurrenciesAction());
    }).catchError((error) {
      store.dispatch(ErrorCurrenciesAction(error.toString()));
    });
  }

  next(action);
}
