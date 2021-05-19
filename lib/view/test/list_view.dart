import 'package:flutter/material.dart';

class MainForEachaaaaaa extends StatefulWidget {
  @override
  _ListViewState createState() => _ListViewState();
}

class _ListViewState extends State<MainForEachaaaaaa> {

  List<int> list = List<int>.generate(100, (index) => index + 1);
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print(list.toString());
    var dataListINT=[];
    list.forEach((element) {
      if(element%2==0){
        dataListINT.add(element);

        print("foreach:  $element");
        print("dataListINT:  ${dataListINT.toString()}");
      }
    });

   var dataList= list.where((element) => element%3==0).toList();
   print("DataList: ${dataList.toString()}");
  }
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
