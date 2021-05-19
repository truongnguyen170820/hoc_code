import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_app/blocs/authen_bloc.dart';
import 'package:flutter_app/blocs/signin_account_bloc_Impl.dart';
import 'package:flutter_app/model/LoginData.dart';
import 'package:flutter_app/utils/app_constant.dart';
import 'package:flutter_app/utils/color_utils.dart';
import 'package:flutter_app/utils/font_utils.dart';
import 'package:flutter_app/utils/screen/screen_util.dart';
import 'package:flutter_app/utils/utilites.dart';
import 'package:flutter_app/view/beTime/history_booking_page.dart';
import 'package:flutter_app/view/testList/list_view_product.dart';
import 'package:flutter_app/view/testStream/test_stream_page.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:progress_dialog/progress_dialog.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SigninAccountView extends StatefulWidget {
  @override
  _SigninAccountViewState createState() => _SigninAccountViewState();
}

class _SigninAccountViewState extends State<SigninAccountView>
    with SigninAccountImpl {
  final authenBloc = AuthenBloc();
  ProgressDialog progressDialog;
  final _accountController = TextEditingController();
  final _passwordController = TextEditingController();
  final _domainNameController = TextEditingController();
  SharedPreferences spfs; // đọc  và ghi cặp khóa key value

  final storage = FlutterSecureStorage(); // lưu trữ dữ liệu vào bộ nhớ an toàn
  bool _isRememberMe = false;
  bool _isShowPassword = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    progressDialog = ProgressDialog(context);
    authenBloc.onSigninAccountListen(this);
    storage.read(key: AppConstants.KEY_USER_NAME).then((value){
      setState(() {
        if(value != null && value.isNotEmpty) _isRememberMe = true;
        _accountController.text = value;
      });
    });
    storage.read(key: AppConstants.KEY_PASSWORD).then((value) {
      _passwordController.text = value;
    });
    storage.read(key: AppConstants.KEY_DOMAIN).then((value){
      _domainNameController.text = value;
    });

  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        height: 667, width: 375, allowFontScaling: true);
    return Scaffold(
      body: Container(
        color: ColorUtils.MAIN_GRADIENT_2,
        child: SingleChildScrollView(
          child: Column(
            children: [
             CircleAvatar(
               radius: 35,
               child: Image.asset("assets/images/logo.png"),
             ),
              Container(
                padding: EdgeInsets.all(20),
                child: TextField(
                  controller: _accountController,
                    decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        hintText: "nhập tài khoản",
                        prefixIcon: Icon(Icons.person_outline),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none))
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                child: TextField(
                  obscureText: _isShowPassword,
                  controller: _passwordController,
                    decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        hintText: "nhập mật khẩu",
                        prefixIcon: Icon(Icons.lock_outline),
                        suffixIcon: IconButton(
                          icon: Icon(
                            _isShowPassword?
                                Icons.visibility :
                                Icons.visibility_off
                          ),
                          onPressed: (){
                            setState(() {
                              setState(() {
                                _isShowPassword = !_isShowPassword;
                              }
                              );
                            });
                          },
                        ),

                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none))),
              ),
              Container(
                padding: EdgeInsets.all(20),
                child: TextField(
                    controller: _domainNameController,
                    decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        hintText: "domian",
                        prefixIcon: Icon(Icons.language),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none)
                    )),
              ),
              Row(
                children: [
                  Checkbox(
                      activeColor: ColorUtils.WHITE,
                      checkColor: ColorUtils.RED_BACKGROUND,
                      value: _isRememberMe, onChanged: (bool newValue){
                    setState(() {
                      _isRememberMe = newValue;
                    });
                  }),
                  Text("Lưu mật khẩu", style: FontUtils.NORMAL.copyWith(color: ColorUtils.WHITE),)
                ],
              ),

              Container(
                padding: EdgeInsets.all(20),
                child: RaisedButton(
                  color: Colors.black45,
                  child: Text(
                    "Đăng nhập",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {
                    signInAcount();
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void signInAcount() async {
    if (_accountController.text == '') {
      Utilites.showToast(context, "bạn chưa nhập tài khoản");
      return;
    }
    if (_passwordController.text == '') {
      Utilites.showToast(context, "bạn chưa nhập mật khẩu");
      return;
    }
    if (_domainNameController.text == '') {
      Utilites.showToast(context, "bạn chưa nhập domain");
      return;
    }
    spfs = await SharedPreferences.getInstance();

    // show ra 1 dialog chờ xử lý để lấy dữ liệu từ server
    progressDialog.show().whenComplete(() => authenBloc.executeSigninAccount(
        _accountController.text,
        _passwordController.text,
        _domainNameController.text));
  }

  @override
  void onSigninAccountError(String message) {
// trong time AppConstants.DIALOG_DURATION nó ẩn cái progress dialog rồi show lên thông báo
    Future.delayed(Duration(seconds: AppConstants.DIALOG_DURATION))
        .then((value) {
      progressDialog.hide().whenComplete(() {
        Utilites.showToast(context, message);
      });
    });
  }

  @override
  void onSigninAccountRequesting() {
    // TODO: implement onSigninAccountRequesting
  }

  @override
  void onSigninAccountSuccess(List<LoginData> response) async {
    if (_isRememberMe) {
      storage.write(
          key: AppConstants.KEY_USER_NAME, value: _accountController.text);
      storage.write(
          key: AppConstants.KEY_PASSWORD, value: _passwordController.text);
      storage.write(
          key: AppConstants.KEY_DOMAIN, value: _domainNameController.text);

    }
    Navigator.pushAndRemoveUntil(context,
        MaterialPageRoute(builder: (context) =>ListViewProduct()), (route) => false);
    // TODO: implement onSigninAccountSuccess
  }

  @override
  void dispose() {
    authenBloc.dispose();
    _passwordController.dispose();
    _accountController.dispose();
    _domainNameController.dispose();
    // TODO: implement dispose
    super.dispose();
  }
}
