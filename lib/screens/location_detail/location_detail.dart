import 'package:flutter/material.dart';
import '../../models/location.dart';
import '../../widgets/image_banner.dart';
import '../../widgets/location_tile.dart';
import 'text_section.dart';

class LocationDetail extends StatelessWidget {
  final int _locationID;

  LocationDetail(this._locationID);

  @override
  Widget build(BuildContext context) {
    // NOTE: we'll be moving this to a scoped_model later
    final location = Location.fetchByID(_locationID);

    return Scaffold(
      appBar: AppBar(
        title: Text(location.name),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ImageBanner(
              assetPath: location.imagePath,
              height: 200.0,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20.0),
              child: LocationTile(location: location),
            ),
          ]..addAll(textSections(location))),
    );
  }

  List<Widget> textSections(Location location) {
    return location.facts
        .map((fact) => TextSection(fact.title, fact.text))
        .toList();
  }
}
