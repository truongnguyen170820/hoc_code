import 'package:flutter/material.dart';
import 'package:flutter_app/blocs/authen_bloc.dart';
import 'package:flutter_app/model/LoginData.dart';
import 'package:flutter_app/utils/api_response.dart';
import 'package:flutter_app/utils/app_constant.dart';
import 'package:flutter_app/utils/screen/screen_util.dart';
import 'package:flutter_app/view/SplashScreen.dart';
import 'package:flutter_app/view/dynamicForm/dynamic_form_main.dart';
import 'package:flutter_app/view/list/MainList.dart';
import 'package:flutter_app/view/testList/list_view_product.dart';
import 'package:flutter_app/view/testListView/test_list_view.dart';
import 'package:flutter_app/view/user/signin_account_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  final authenBloc = AuthenBloc();
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // authenBloc.loadData();
    return MaterialApp(
      title: 'Test App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      builder: (BuildContext context, Widget child) {
        final data = MediaQuery.of(context).copyWith(textScaleFactor: 1.0);
        return MediaQuery(data: data, child: child);
      },
      home: DynamicFormMain(),
      // home: StreamBuilder<ApiResponse<LoginData>>(
      //   stream: authenBloc.subjectAuthenData.stream,
      //   builder: (context, snapshot) {
      //     final response = snapshot.data;
      //     if (response != null && response.status == Status.SUCCESS) {
      //       return SigninAccountView();
      //     }else{
      //       return Container();
      //     }
      //   },
      // ),
    );
  }
}
// final userBox = Hive.box(AppConStant.HIVE_USER_BOX);