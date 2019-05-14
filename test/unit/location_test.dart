import 'package:flutter_test/flutter_test.dart';
import 'package:tourismandco/models/location.dart';

void main() {
  test('Locations can be fetched', () {
    final locations = Location.fetchAll();

    expect(locations.length, greaterThan(0));

    for (Location l in locations) {
      expect(l.facts.length, greaterThan(0));
    }
  });

  test('Locations can be fetched by ID', () {
    final locations = Location.fetchAll();

    for (Location l in locations) {
      final fetchedLocation = Location.fetchByID(l.id);
      expect(fetchedLocation, isNotNull);
      expect(fetchedLocation.id, equals(l.id));
    }
  });
}
