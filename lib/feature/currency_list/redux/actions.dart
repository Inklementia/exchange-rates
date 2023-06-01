import 'package:exchangerates/core/models/currency/currency.dart';

class FetchCurrenciesAction {}

class UpdateCurrenciesAction {
  final List<Currency> list;

  UpdateCurrenciesAction(this.list);
}

class PopulateCurrenciesAction {
  final List<Currency> list;

  PopulateCurrenciesAction(this.list);
}

class ErrorCurrenciesAction {
  final String errorMessage;

  ErrorCurrenciesAction(this.errorMessage);
}

class ClearCurrenciesAction {}
