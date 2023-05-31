// Package imports:
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:exchangerates/conf/api/collection_constants.dart';
import 'package:exchangerates/conf/api/url_constants.dart';
import 'package:exchangerates/core/models/currency/currency.dart';
import 'package:injectable/injectable.dart';

// Project imports:

@injectable
class CurrencyRepository {
  //
  final CollectionReference _currencyCollection =
      FirebaseFirestore.instance.collection(MyCollections.rates);

  void populateCollection(List<Currency> currencies) async {
    CollectionReference currenciesCollection =
        FirebaseFirestore.instance.collection(MyCollections.currencies);
    for (var currency in currencies) {
      await currenciesCollection.add({
        'name': currency.code,
        'description': currency.description,
        'rates': currency.exchangeRates,
      });
    }
  }

  void clearCollection() async {
    QuerySnapshot querySnapshot = await _currencyCollection.get();
    for (DocumentSnapshot docSnapshot in querySnapshot.docs) {
      await docSnapshot.reference.delete();
    }
  }

  Future<List<Currency>> fetchList() async {
    QuerySnapshot snapshot = await _currencyCollection.get();
    List<Currency> list = snapshot.docs.map((doc) {
      print('Currencies:' + doc.data().toString());
      return Currency.fromJson(doc.data() as Map<String, dynamic>);
    }).toList();
    return list;
  }

  Future<Currency?> fetchDetails(String code) async {
    return null;
  }
}
