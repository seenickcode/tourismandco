import 'package:flutter/material.dart';
import '../../models/location.dart';
import '../../widgets/location_tile.dart';

class TileOverlay extends StatelessWidget {
  final Location location;

  TileOverlay(this.location);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          padding: EdgeInsets.symmetric(vertical: 5.0),
          decoration: BoxDecoration(color: Colors.black.withOpacity(0.5)),
          child: LocationTile(location: location, darkTheme: true),
        ),
      ],
    );
  }
}
