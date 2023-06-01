// Package imports:
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:exchangerates/conf/api/collection_constants.dart';
import 'package:exchangerates/core/models/currency/currency.dart';
import 'package:exchangerates/utils/rate_helper.dart';
import 'package:injectable/injectable.dart';

@injectable
class CurrencyRepository {
  //
  final CollectionReference _currencyCollection =
      FirebaseFirestore.instance.collection(MyCollections.currencies);

  //
  Future<List<Currency>> fetch() async {
    QuerySnapshot snapshot = await _currencyCollection.get();

    List<Currency> list = await snapshot.docs
        .map((doc) => Currency.fromJson(doc.data() as Map<String, dynamic>))
        .toList();

    return list;
  }

  Future<Currency?> fetchDetails(String code) async {
    QuerySnapshot snapshot =
        await _currencyCollection.where('code', isEqualTo: code).get();
    if (snapshot.docs.isNotEmpty) {
      DocumentSnapshot document = snapshot.docs.first;
      Currency currency =
          Currency.fromJson(document.data() as Map<String, dynamic>);
      return currency;
    } else {
      return null;
    }
  }

  // random rates
  Future<void> updateAllRates() async {
    QuerySnapshot snapshot = await _currencyCollection.get();
    WriteBatch batch = FirebaseFirestore.instance.batch();

    snapshot.docs.forEach((doc) {
      List<dynamic> randomRates = MyRateHelper.generateRandomValues();
      batch.update(doc.reference, {'rates': randomRates});
    });

    await batch.commit();
  }

  // seeding
  Future<void> populateCollection(List<Currency> currencies) async {
    for (var currency in currencies) {
      await _currencyCollection.add({
        'code': currency.code,
        'countryCode': currency.countryCode,
        'description': currency.description,
        'rates': currency.exchangeRates,
      });
    }
  }

  Future<void> clearCollection() async {
    QuerySnapshot querySnapshot = await _currencyCollection.get();
    for (DocumentSnapshot docSnapshot in querySnapshot.docs) {
      await docSnapshot.reference.delete();
    }
  }
}
