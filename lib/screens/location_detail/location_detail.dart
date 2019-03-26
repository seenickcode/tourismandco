// screens/home/home.dart

import 'package:flutter/material.dart';

class LocationDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Location Detail'),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _bannerContainer(Colors.red),
            _textSectionContainer(Colors.green),
            _textSectionContainer(Colors.blue),
            _textSectionContainer(Colors.purple)
          ]),
    );
  }

  Widget _bannerContainer(Color color) {
    return Container(
        constraints: BoxConstraints.expand(height: 200.0),
        decoration: BoxDecoration(color: color),
        child: Image.asset(
          "assets/images/kiyomizu-dera.jpg",
          fit: BoxFit.cover,
        ));
  }

  Widget _textSectionContainer(Color color) {
    return Container(
      decoration: BoxDecoration(color: color),
      child: Text("This is some text section."),
    );
  }
}
