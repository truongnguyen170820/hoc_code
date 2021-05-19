import 'package:flutter/material.dart';

class DynamicFormMain extends StatefulWidget {
  @override
  _DynamicFormMainState createState() => _DynamicFormMainState();
}

class _DynamicFormMainState extends State<DynamicFormMain> {

  int index = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dynamic"),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: index,
          itemBuilder: (context, index){
       return itemListView(index);
      }
      )
    );
  }

  itemListView(int size){
    return Row(
      children: [
        Container(
          width: MediaQuery.of(context).size.width / 2,
          child: TextField(
            decoration: InputDecoration(
              hintText: "ạhdkas"
            ),
          ),
        ),
        IconButton(icon: Icon(Icons.add), onPressed: (){
          setState(() {
            size ++;
          });
        })
      ],
    );
  }
}
