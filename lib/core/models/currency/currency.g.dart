// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'currency.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$CurrencyCWProxy {
  Currency code(String code);

  Currency exchangeRates(List<double> exchangeRates);

  Currency countryCode(String? countryCode);

  Currency description(String? description);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Currency(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Currency(...).copyWith(id: 12, name: "My name")
  /// ````
  Currency call({
    String? code,
    List<double>? exchangeRates,
    String? countryCode,
    String? description,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfCurrency.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfCurrency.copyWith.fieldName(...)`
class _$CurrencyCWProxyImpl implements _$CurrencyCWProxy {
  const _$CurrencyCWProxyImpl(this._value);

  final Currency _value;

  @override
  Currency code(String code) => this(code: code);

  @override
  Currency exchangeRates(List<double> exchangeRates) =>
      this(exchangeRates: exchangeRates);

  @override
  Currency countryCode(String? countryCode) => this(countryCode: countryCode);

  @override
  Currency description(String? description) => this(description: description);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Currency(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Currency(...).copyWith(id: 12, name: "My name")
  /// ````
  Currency call({
    Object? code = const $CopyWithPlaceholder(),
    Object? exchangeRates = const $CopyWithPlaceholder(),
    Object? countryCode = const $CopyWithPlaceholder(),
    Object? description = const $CopyWithPlaceholder(),
  }) {
    return Currency(
      code: code == const $CopyWithPlaceholder() || code == null
          ? _value.code
          // ignore: cast_nullable_to_non_nullable
          : code as String,
      exchangeRates:
          exchangeRates == const $CopyWithPlaceholder() || exchangeRates == null
              ? _value.exchangeRates
              // ignore: cast_nullable_to_non_nullable
              : exchangeRates as List<double>,
      countryCode: countryCode == const $CopyWithPlaceholder()
          ? _value.countryCode
          // ignore: cast_nullable_to_non_nullable
          : countryCode as String?,
      description: description == const $CopyWithPlaceholder()
          ? _value.description
          // ignore: cast_nullable_to_non_nullable
          : description as String?,
    );
  }
}

extension $CurrencyCopyWith on Currency {
  /// Returns a callable class that can be used as follows: `instanceOfCurrency.copyWith(...)` or like so:`instanceOfCurrency.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$CurrencyCWProxy get copyWith => _$CurrencyCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Currency _$CurrencyFromJson(Map<String, dynamic> json) => Currency(
      code: json['code'] as String? ?? '',
      exchangeRates: (json['rates'] as List<dynamic>?)
              ?.map((e) => (e as num).toDouble())
              .toList() ??
          [],
      countryCode: json['countryCode'] as String? ?? '',
      description: json['description'] as String? ?? '',
    );

Map<String, dynamic> _$CurrencyToJson(Currency instance) => <String, dynamic>{
      'code': instance.code,
      'countryCode': instance.countryCode,
      'description': instance.description,
      'rates': instance.exchangeRates,
    };
