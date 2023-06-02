// Package imports:
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:exchangerates/conf/api/collection_constants.dart';
import 'package:exchangerates/core/models/location/location.dart';
import 'package:exchangerates/utils/location_helper.dart';
import 'package:injectable/injectable.dart';
import 'package:location/location.dart';

@injectable
class LocationRepository {
  //
  final CollectionReference _locationCollection =
      FirebaseFirestore.instance.collection(MyCollections.locations);
  //
  Future<LocationData?> fetchLastLocation() async {
    final querySnapshot = await _locationCollection
        .orderBy('timestamp', descending: true)
        .limit(1)
        .get();

    if (querySnapshot.docs.isNotEmpty) {
      final geoPoint = querySnapshot.docs.first.data() as Map<String, dynamic>;
      return LocationData.fromMap({
        'latitude': geoPoint['location'].latitude,
        'longitude': geoPoint['location'].longitude,
      });
    }

    return null;
  }

  Future<void> addNewLocation(double latitude, double longitude) async {
    await _locationCollection.add({
      'location': GeoPoint(latitude, longitude),
    });
  }
}
