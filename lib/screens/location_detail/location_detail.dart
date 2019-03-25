// screens/home/home.dart

import 'package:flutter/material.dart';

class LocationDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Location Detail'),
      ),
      body: Column(children: [
        _bannerContainer(Colors.red),
        _textSectionContainer(Colors.green),
        _textSectionContainer(Colors.blue),
        _textSectionContainer(Colors.purple)
      ]),
    );
  }

  Widget _bannerContainer(Color color) {
    return Container(
      decoration: BoxDecoration(color: color),
      child: Text("This is my banner."),
    );
  }

  Widget _textSectionContainer(Color color) {
    return Container(
      decoration: BoxDecoration(color: color),
      child: Text("This is some text section."),
    );
  }
}
