// Package imports:
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:exchangerates/conf/api/collection_constants.dart';
import 'package:exchangerates/core/models/location/location.dart';
import 'package:injectable/injectable.dart';

@injectable
class LocationRepository {
  //
  final CollectionReference _locationCollection =
      FirebaseFirestore.instance.collection(MyCollections.locations);
  //
  Future<MyLocation> fetchLast() async {
    QuerySnapshot snapshot = await _locationCollection.get();

    List<MyLocation> list = await snapshot.docs
        .map((doc) => MyLocation.fromJson(doc.data() as Map<String, dynamic>))
        .toList();

    return list.last;
  }

  Future<void> addNewLocation(double latitude, double longitude) async {
    await _locationCollection.add({
      'location': GeoPoint(latitude, longitude),
    });
  }
}
