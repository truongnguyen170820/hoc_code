import 'package:flutter/material.dart';
import 'package:flutter_app/view/api/user_main.dart';
import 'package:flutter_app/view/list/fold/dashboard.dart';
import 'package:flutter_app/view/list/fold/main_fold.dart';
import 'package:flutter_app/view/list/forEach/main_forEach.dart';
import 'package:flutter_app/view/list/list/logic_tham_so.dart';
import 'package:flutter_app/view/service/service_view.dart';
import 'package:flutter_app/view/test/list_view.dart';


class MainList extends StatefulWidget {
  @override
  _MainListState createState() => _MainListState();
}

class _MainListState extends State<MainList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Main List"),
      ),
      body: GestureDetector(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:<Widget> [
                RaisedButton(
                  child: Text("Đầu Tiên"),
                  color: Colors.white,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15) ),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => LogicThamSo()));
                  },
                ),
                SizedBox(width: 10),

                RaisedButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => MainFold()));
                  },
                  child: Text("Tiếp"),
                  color: Colors.white,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15) ),
                ),
                RaisedButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ServiceView()));
                  },
                  child: Text("ForEach"),
                  color: Colors.white,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15) ),
                ),
                RaisedButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => UserMain()));
                  },
                  child: Text("APi"),
                  color: Colors.white,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15) ),
                ),
              ],
            ),
          ),
        ),
      ),

    );
  }
}


