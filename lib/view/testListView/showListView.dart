import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/view/testListView/test_list_view.dart';

class ShowListView extends StatefulWidget {
 final ItemList itemList;
  const ShowListView(this.itemList);

  @override
  _ShowListViewState createState() => _ShowListViewState();
}

class _ShowListViewState extends State<ShowListView> {
  ItemList itemList;

  @override
  void initState() {
    itemList= widget.itemList;
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CircleAvatar(
            child: Image.asset(itemList.image),
          ),
          Text(itemList.name??""),
          Text(itemList.time??"")
        ],
      ),
    );
  }
}
