import 'package:flutter/material.dart';
import 'image_banner.dart';
import 'text_section.dart';

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
            ImageBanner("assets/images/kiyomizu-dera.jpg"),
            TextSection("summary1",
                "jkfld;js fdjsk al;fdjks l;afjkd sajkfjfkdlj sfkdjls fjdslfkj djfkldsj fkljd slkfs"),
            TextSection("summary2",
                "jkfld;js fdjsk al;fdjks l;afjkd sajkfjfkdlj sfkdjls fjdslfkj djfkldsj fkljd slkfs"),
            TextSection("summary3",
                "jkfld;js fdjsk al;fdjks l;afjkd sajkfjfkdlj sfkdjls fjdslfkj djfkldsj fkljd slkfs"),
          ]),
    );
  }
}
