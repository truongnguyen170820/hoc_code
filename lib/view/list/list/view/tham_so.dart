
import 'package:flutter/material.dart';
class ThamSo extends StatefulWidget {
  @override
  _ThamSoState createState() => _ThamSoState();
}

class _ThamSoState extends State<ThamSo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children:<Widget> [
                Container(
                 margin: EdgeInsets.all(50),
                  // child: TextField(
                  //   textAlignVertical: TextAlignVertical.center,
                  //   decoration: InputDecoration(
                  //     hintText: "nhập số a"
                  //   ),
                  // ),
                  child: Text("abc"),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
