// Package imports:
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:exchangerates/utils/rate_helper.dart';
import 'package:json_annotation/json_annotation.dart';

part 'currency.g.dart';

@CopyWith()
@JsonSerializable(explicitToJson: false)
class Currency {
  //
  @JsonKey(defaultValue: '')
  final String code;

  @JsonKey(defaultValue: '')
  final String? description;

  @JsonKey(name: 'rates', defaultValue: [])
  final List<double> exchangeRates;

  //

  Currency({
    required this.code,
    required this.exchangeRates,
    this.description,
  });

  //

  static List<double> _exchangeRatesFromJson(List<double> rates) {
    return MyRateHelper.getRandomValues(rates, 5);
  }

  //

  factory Currency.fromJson(Map<String, dynamic> json) =>
      _$CurrencyFromJson(json);

  Map<String, dynamic> toJson() => _$CurrencyToJson(this);
}
