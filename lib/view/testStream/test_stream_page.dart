import 'package:flutter/material.dart';

class Item{
  String name;
  String urlImage;

  Item(this.name, this.urlImage);
}

class TestStream extends StatefulWidget {
  @override
  _TestStreamState createState() => _TestStreamState();
}

class _TestStreamState extends State<TestStream> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [

        ],
      ),
    );
  }

}
