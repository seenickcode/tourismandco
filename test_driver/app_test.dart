// Imports the Flutter Driver API
import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';
import 'package:tourismandco/models/location.dart';

void main() {
  group('happy path integration tests', () {
    final locations = Location.fetchAll();

    // First, define the Finders. We can use these to locate Widgets from the
    // test suite. Note: the Strings provided to the `byValueKey` method must
    // be the same as the Strings we used for the Keys in step 1.
    final locationListItemTextFinder =
        find.byValueKey('location_list_item_${locations.first.id}');
    final locationTileOverlayTextFinder =
        find.byValueKey('location_tile_name_${locations.first.id}');

    FlutterDriver driver;

    // Connect to the Flutter driver before running any tests
    setUpAll(() async {
      driver = await FlutterDriver.connect();
    });

    // Close the connection to the driver after the tests have completed
    tearDownAll(() async {
      if (driver != null) {
        driver.close();
      }
    });

    test('a location name appears in location list', () async {
      // Use the `driver.getText` method to verify the counter starts at 0.
      expect(await driver.getText(locationTileOverlayTextFinder), isNotEmpty);
    });

    test('a location in the list is tappable', () async {
      // First, tap on the button
      await driver.tap(locationTileOverlayTextFinder);

      // Use the `driver.getText` method to verify the counter starts at 0.
      expect(await driver.getText(locationTileOverlayTextFinder), isNotEmpty);
    });
  });
}
