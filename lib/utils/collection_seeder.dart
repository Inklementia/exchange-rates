import 'package:exchangerates/core/models/currency/currency.dart';
import 'package:exchangerates/core/repository/currency_repository.dart';
import 'package:exchangerates/core/root/injector.dart';
import 'package:exchangerates/utils/rate_helper.dart';

class CollectionSeeder {
  //
  static List<Currency> currencies = [
    Currency(
      code: 'USD',
      description:
          'United States Dollar: The official currency of the United States, widely used in global trade and finance.',
      exchangeRates: MyRateHelper.generateRandomValues(),
    ),
    Currency(
      code: 'EUR',
      description:
          'Euro: The official currency of the European Union, used by many European countries.',
      exchangeRates: MyRateHelper.generateRandomValues(),
    ),
    Currency(
      code: 'JPY',
      description:
          'Japanese Yen: The currency of Japan, known for its stability and importance in the Asian economy.',
      exchangeRates: MyRateHelper.generateRandomValues(),
    ),
    Currency(
      code: 'GBP',
      description:
          'British Pound Sterling: The currency of the United Kingdom, commonly used in international markets.',
      exchangeRates: MyRateHelper.generateRandomValues(),
    ),
    Currency(
      code: 'AUD',
      description:
          'Australian Dollar: The currency of Australia, influenced by commodity prices and the country\'s economic performance.',
      exchangeRates: MyRateHelper.generateRandomValues(),
    ),
    Currency(
      code: 'CAD',
      description:
          'Canadian Dollar: The currency of Canada, known for its correlation with oil prices and trade with the United States.',
      exchangeRates: MyRateHelper.generateRandomValues(),
    ),
    Currency(
      code: 'CHF',
      description:
          'Swiss Franc: The currency of Switzerland, known for its stability and use as a safe-haven currency.',
      exchangeRates: MyRateHelper.generateRandomValues(),
    ),
    Currency(
      code: 'CNY',
      description:
          'Chinese Yuan Renminbi: The currency of China, tightly controlled by the government and influential in global trade.',
      exchangeRates: MyRateHelper.generateRandomValues(),
    ),
    Currency(
      code: 'INR',
      description:
          'Indian Rupee: The currency of India, widely used in South Asia and influenced by the country\'s economic policies.',
      exchangeRates: MyRateHelper.generateRandomValues(),
    ),
    Currency(
      code: 'BRL',
      description:
          'Brazilian Real: The currency of Brazil, influenced by commodity prices, economic reforms, and political developments.',
      exchangeRates: MyRateHelper.generateRandomValues(),
    )
  ];

  static Future<void> populateTable() async {
    //clear collection
    await injector<CurrencyRepository>().clearCollection();

    // seed table
    injector<CurrencyRepository>().populateCollection(currencies);
  }
}
