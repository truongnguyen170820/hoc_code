import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_app/model/user.dart';
import 'package:dio/dio.dart';
import 'package:flutter_app/view/service/service_view.dart';
import 'package:intl/intl.dart';

// class User {
//   String name;
//   String service;
//
//   User(this.name, this.service);
// }

class UserMain extends StatefulWidget {
  @override
  _UserMainState createState() => _UserMainState();
}

class _UserMainState extends State<UserMain> {
  Dio dio = new Dio();
  TextEditingController _searchController;
  DateTime dateTimeNow=DateTime.now();
  DateFormat formatter = DateFormat('dd/MM/yyyy');

  todatDate(){
    DateTime dateTime = DateTime.now();
     String formatterDate = formatter.format(dateTime);
     print(formatterDate);
     return formatterDate;
  }
  String fromDate ;
  String toDate;

  bool isSearch=false;
   List<Data> listUser = [];
  Response response;
  getData() async {
    response = await dio.post('http://192.168.1.86:10000/api/customer/search',

        data: {
          "DepartmentIdStr": "5c132aa83e72d819b8908930",
          "PageIndex": 1,
          "PageSize": 20, //lấy phần tử
          "Text": _searchController.text,
          "FromDateSt": fromDate,
          "ToDateStr": toDate
        },
        options: Options(headers: {
          "SessionId": "dafea8f922e24f40aaa764b759a38c0e",
          "AppKey": "1234567890abcdef"
        }));
    if(response.statusCode==200){
      User user = User.fromJson(response.data);
      listUser =user.data;
      if(listUser.length>0){
        setState(() {
        });
      }
    }else{
      print(response.statusMessage??"");
    }
  }


  List<int> itemDropdown = List<int>.generate(6, (index) => index);
  List<String> labelDropdown = [
    "Hôm qua",
    "Hôm nay",
    "Tuần này",
    "Tuần trước",
    "Tháng này",
    "Tháng trước"
  ];
  int selected = 1;

  // List<User> listUserMain =[];
@override
  void initState() {
    // TODO: implement initState
  getData();
  todatDate();
    super.initState();
  _searchController = TextEditingController();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Khách Hàng",
          style: TextStyle(fontSize: 16),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Row(
            children: [
              isSearch?GestureDetector(
                  onTap:(){
                    setState(() {
                      isSearch=false;
                    });
                  },
                  child: TextField(
                    controller: _searchController,
                    onChanged: (String valua){
                      getData();
                        },
                    decoration: InputDecoration(
                      hintText: "Tìm kiếm"
                    ),
                  )):   Row(
                children: <Widget>[
                  SizedBox(
                    width: 10,
                  ),
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        isSearch=true;
                      });
                    },
                    child: Icon(
                      Icons.search,
                      size: 25,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  DropdownButton(
                    style: TextStyle(fontSize: 16, color: Colors.black),
                    icon: Icon(
                      Icons.arrow_drop_down,
                      color: Colors.blue,
                      size: 30,
                    ),
                    value: selected,
                    items: itemDropdown.map<DropdownMenuItem<int>>((int value) {
                      return DropdownMenuItem(
                        value: value,
                        child: Text(
                          "${labelDropdown[value]}",
                        ),
                      );
                    }).toList(),
                    onChanged: (int index) {
                      selected = index;
                      fitterData();
                    },
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Tổng: 1 khách hàng",
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
   SizedBox(
            height: 10,
          ),

          Expanded(
            child: ListView.builder(
              itemCount: listUser.length,
              itemBuilder: (context, index) => ItemUser(
                user: listUser[index],
              ),
            ),
          )
        ],
      ),
    );
  }

  fitterData(){
  setState(() {
    if(selected == 0) {
      fromDate = formatter.format(dateTimeNow );
      toDate = formatter.format(dateTimeNow);
      getData();
    }
    else if(selected == 1){
        fromDate=formatter.format(dateTimeNow);
        toDate=formatter.format(dateTimeNow);
        getData();
    }else if(selected == 2){
      fromDate = formatter.format(dateTimeNow.subtract( Duration(days: dateTimeNow.weekday-1)));
      toDate = formatter.format(dateTimeNow.subtract(Duration(days: dateTimeNow.weekday-7)));
      getData();
    }
    else if(selected == 3){
      fromDate = formatter.format(dateTimeNow.subtract(Duration(days: dateTimeNow.weekday + 6 )));
      toDate = formatter.format(dateTimeNow.subtract(Duration(days: dateTimeNow.weekday )));
      getData();
    } else if(selected == 4){
      // fromDate = formatter.format(dateTimeNow.subtract(Duration(days: dateTimeNow.month + 7 ))) ;
      // toDate = formatter.format(dateTimeNow.subtract(Duration(days: dateTimeNow.month + )));
      getData();
    }
  });
  }
}

class ItemUser extends StatelessWidget {
  final Data user;

  const ItemUser({this.user});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(border: Border.all(width: 0, color: Colors.black12)),
      padding: const EdgeInsets.all(13.0),
      child: Row(
        children: [
          CircleAvatar(
            radius: 20,
            backgroundImage: NetworkImage(user.imageUrl ?? ""),
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                user.name ?? "",
                // "Nguyễn Văn A",
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
              SizedBox(
                height: 3,
              ),
              Text(
                user.mainService?.productName ?? "",
                // "Gói 1 tháng 200k",
                style: TextStyle(color: Colors.black54, fontSize: 15),
                // user.service ?? ""
              ),
            ],
          ),
          Spacer(),
          Container(
            padding: EdgeInsets.all(10),
            width: 30,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Colors.black45,
              shape: BoxShape.circle
            ),
            // decoration: BoxDecoration(shape: BoxShape.circle),
            child: Text(
              "${user.mainService?.remain ?? 0}",
              style: TextStyle(
                  color: Colors.white,
                  // backgroundColor: Colors.black12,
                  fontSize: 8,
                  fontWeight: FontWeight.w800),
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}
