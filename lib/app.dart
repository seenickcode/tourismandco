// app.dart

import 'package:flutter/material.dart';
import 'screens/location_detail/location_detail.dart';
import 'style.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LocationDetail(),
      theme: ThemeData(
          textTheme: TextTheme(
        body1: Body1Style,
      )),
    );
  }
}
