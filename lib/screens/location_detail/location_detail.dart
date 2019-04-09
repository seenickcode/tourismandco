import 'package:flutter/material.dart';
import '../../models/location.dart';
import 'image_banner.dart';
import 'text_section.dart';

class LocationDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // simply fetch the first location we have
    // NOTE: we'll be moving this to a scoped_model later
    final locations = Location.fetchAll();
    final location = locations.first;

    return Scaffold(
      appBar: AppBar(
        title: Text(location.name),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ImageBanner(location.imagePath),
          ]..addAll(textSections(location))),
    );
  }

  List<Widget> textSections(Location location) {
    return location.facts
        .map((fact) => TextSection(fact.title, fact.text))
        .toList();
  }
}
