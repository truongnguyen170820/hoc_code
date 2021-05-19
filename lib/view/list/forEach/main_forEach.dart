import 'dart:math';

import 'package:flutter/material.dart';

class MainForEach extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'For Each',
      home: MyForEach(),
    );
  }
}

class MyForEach extends StatefulWidget {
  @override
  _MyForEachState createState() => _MyForEachState();
}

class _MyForEachState extends State<MyForEach> {
  List<Friend> myFriend = [
    Friend(name: 'one', color: 0xff738f66),
    Friend(name: 'Amanda', color: 0xff5e5e5e),
    Friend(name: 'Sebastian', color: 0xffff9190),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ForEach'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.color_lens),
        onPressed: () {
          myFriend.forEach((element) {
            element.color = (Random().nextDouble() * 0xFFFFFFFF).toInt();
          });
          setState(() {});
        },
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('Click on the button to change the background color'),
            SizedBox(
              height: 20,
            ),
            ListView.separated(
              shrinkWrap: true,
              separatorBuilder: (BuildContext context, int index) => Divider(),
              itemCount: myFriend.length,
              itemBuilder: (context, int index) {
                return Container(
                  color: Color(myFriend[index].color),
                  child: ListTile(
                    title: Text(
                      myFriend[index].name,
                    ),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}

class Friend {
  String name;
  int color;

  Friend({this.name, this.color});
}
