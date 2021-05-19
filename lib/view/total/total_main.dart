import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app/utils/utilites.dart';
import 'dart:io';
import 'package:flutter_app/widget/global.dart';
import 'package:flutter/services.dart';

class Service {
  int stn;
  int sth;

  Service({this.stn, this.sth});
}

class TotalMain extends StatefulWidget {
  @override
  _TotalMainState createState() => _TotalMainState();
}

class _TotalMainState extends State<TotalMain> {
  final List<Service> service = [];
  TextEditingController _stnController;
  TextEditingController _sthController;
  TextEditingController _clearController;
  bool _isRememberMe = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _stnController = TextEditingController();
    _sthController = TextEditingController();
    _clearController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Tính Tổng"),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(color: Colors.cyan),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "Số thứ nhất",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: setSp(20),
                  fontWeight: FontWeight.bold),
            ),
            TextField(
              controller: _stnController,
              keyboardType: TextInputType.numberWithOptions(decimal: true),
              inputFormatters: [
                FilteringTextInputFormatter.allow(RegExp(r'^-?[0-9]+$')),
              ],
              decoration: InputDecoration(
                  hintText: "nhập số thứ nhất",
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none)),
            ),
            Text(
              "Số thứ hai",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: setSp(20),
                  fontWeight: FontWeight.bold),
            ),
            TextField(
              controller: _sthController,
              keyboardType: TextInputType.numberWithOptions(decimal: true),
              inputFormatters: [
                FilteringTextInputFormatter.allow(RegExp(r'^-?[0-9]+$')),
              ],
              decoration: InputDecoration(
                  hintText: "nhập số thứ hai",
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none)),
            ),
            Container(
              padding: EdgeInsets.only(top: 0, bottom: 0),
              height: setHeight(50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Checkbox(
                    value: _isRememberMe,
                    activeColor: Colors.white,
                    checkColor: Colors.blue,
                    onChanged: (bool newValue) {
                      setState(() {
                        _isRememberMe = newValue;
                      });
                    },
                  ),
                  Text(
                    'Check',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: setSp(12),
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: setHeight(18)),
              width: double.infinity,
              height: setHeight(40),
              child: RaisedButton(
                  child: Text(
                    'Tính Tổng',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: setSp(15),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  color: Colors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  onPressed: () {
                    _showAlertDialog(context);
                  }),
            ),
          ],
        ),
      ),
    );
  }

  //
  // void _sumTheNumbers() {
  //   return _showAlertDialog(context);
  // }

  int sums(int STN, int STH ){
    int sum = 0;
    for (int i = STN+1; i < STH; i++) {
      if (_isRememberMe) {
        if (i % 2 != 0) sum += i;
      } else {
        if (i % 2 == 0) sum += i;
      }
    }
    return sum;
  }

  _showAlertDialog(BuildContext context) {
    if (_stnController.text == '') {
      Utilites.showToast(context, "bạn chưa nhập STN");
      return;
    }
    if (_sthController.text == '') {
      Utilites.showToast(context, "bạn chưa nhập STH");
      return;
    }
    var abc = int.parse(_stnController.text);
    var abcd = int.parse(_sthController.text);

    int sum = 0;
    // stn < sth và ngược lại
    if (abc < abcd) {
     sum = sums(abc, abcd );
    } else {
      sum = sums(abcd, abc);
    }

    print(sum);
    // set up the button
    Widget okButton = FlatButton(
      child: Text("OK"),
      onPressed: () {
        setState(() {
          Navigator.of(context).pop();
          _stnController.clear();
          _sthController.clear();
          _isRememberMe = false;
          // Navigator.push(context, MaterialPageRoute(builder: (context) => TotalMain()));
        });
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      content: Text("Tổng các số: ${sum} "),
      actions: [
        okButton,
      ],
    );
    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
