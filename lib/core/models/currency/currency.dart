import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'currency.g.dart';

@CopyWith()
@JsonSerializable(explicitToJson: true)
class Currency {
  //
  @JsonKey(defaultValue: '')
  final String code;

  @JsonKey(defaultValue: '')
  final String? countryCode;

  @JsonKey(defaultValue: '')
  final String? description;

  @JsonKey(name: 'rates', defaultValue: [])
  final List<double> exchangeRates;

  //

  Currency({
    required this.code,
    required this.exchangeRates,
    this.countryCode,
    this.description,
  });

  //

  factory Currency.fromJson(Map<String, dynamic> json) =>
      _$CurrencyFromJson(json);

  Map<String, dynamic> toJson() => _$CurrencyToJson(this);
}
