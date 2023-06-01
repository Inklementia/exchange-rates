// Package imports:
import 'package:exchangerates/core/models/currency/currency.dart';
import 'package:exchangerates/core/repository/currency_repository.dart';
import 'package:exchangerates/core/root/injector.dart';
import 'package:exchangerates/core/root/navigator_service.dart';
import 'package:mobx/mobx.dart';

// Project imports:

part 'store.g.dart';

class CurrencyDetailsStore extends _CurrencyDetailsStore
    with _$CurrencyDetailsStore {}

abstract class _CurrencyDetailsStore with Store {
  //
  final _repository = injector<CurrencyRepository>();

  late String _code;

  //

  @observable
  bool isLoading = false;

  //

  @observable
  Currency? model;

  //

  void setData(String code) {
    _code = code;
    getCurrency();
  }

  //

  void getCurrency() {
    showLoading();

    _repository.fetchDetails(_code).then((data) {
      hideLoading();
      setCurrency(data!);
    }).catchError((error) {
      hideLoading();
      injector<NavigatorService>().showAlert(error.toString());
    });
  }

  //

  void showLoading() => setLoading(true);
  void hideLoading() => setLoading(false);

  //

  @action
  void setLoading(bool value) => isLoading = value;

  //

  @action
  void setCurrency(Currency value) => model = value;
}
