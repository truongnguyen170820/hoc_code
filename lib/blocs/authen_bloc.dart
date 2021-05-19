import 'dart:convert';
import 'package:flutter_app/model/api_constants.dart';
import 'package:flutter_app/model/api_service.dart';
import 'package:flutter_app/model/base_response.dart';
import 'package:flutter_app/model/LoginData.dart';
import 'package:flutter_app/model/signin_account_request.dart';
import 'package:flutter_app/utils/api_response.dart';
import 'package:flutter_app/utils/app_constant.dart';
import 'package:flutter_app/utils/global_cache.dart';
import 'package:hive/hive.dart';
import 'package:rxdart/rxdart.dart';
import 'package:flutter_app/blocs/signin_account_bloc_Impl.dart';
import 'bloc.dart';


//login
class AuthenBloc implements Bloc {
  SigninAccountImpl _signinAccountImpl;
  final _subjectSigninAccount = BehaviorSubject<ApiResponse<JDIResponse>>();
  final _subjectAuthenData = BehaviorSubject<ApiResponse<LoginData>>();


  //thực hiện Login truyền vào 3 thông tin
  executeSigninAccount(String account, String pass, String domainName) {
    final request = SigninAccountRequest(account, pass, domainName);
    ApiService(
            ApiConstants.SIGNIN_ACCOUNT, request.toMap(), _subjectSigninAccount)
        .execute();
  }

  BehaviorSubject<ApiResponse<LoginData>> get subjectAuthenData =>
      _subjectAuthenData;
  // phương thức lắng nghe đăng nhập truyền vào 1 impl status
  void onSigninAccountListen(SigninAccountImpl impl) {

    _signinAccountImpl = impl;
    //lắng nghe  và lấy ra data
    _subjectSigninAccount.listen((data) {
      //check các trường hợp để show ra thông báo
      if (data == null || data.status == Status.LOADING) {

      } else if (data.status == Status.SUCCESS) {
        JDIResponse response = data.data;
        if (response != null) {
          if (response.ErrorCode == "000000") {
            List<LoginData> result =
                response.Data.map((e) => LoginData.fromJson(e)).toList();
            //thiết lập thông tin cơ bản cho member
            // GlobalCache().setData(result.first);
            // Hive.box(AppConStant.HIVE_USER_BOX).put(
            //     AppConStant.HIVE_MEMBER_DATA, jsonEncode(result[0].toJson()));

            _signinAccountImpl.onSigninAccountSuccess(result);
          } else {
            _signinAccountImpl.onSigninAccountError(response.ErrorMessage);
          }
        } else {
          _signinAccountImpl.onSigninAccountError(response.ErrorMessage);
        }
      } else {
        _signinAccountImpl.onSigninAccountError(data.error?.errorMessage??"");
      }
    });
  }

  // loadData() async {
  //   final data =
  //   Hive.box(AppConStant.HIVE_USER_BOX).get(AppConStant.HIVE_MEMBER_DATA);
  //   if (data == null) {
  //     _subjectAuthenData.sink
  //         .add(ApiResponse<LoginData>(Status.SUCCESS, null, null));
  //     return;
  //   } else {
  //     final memberData = LoginData.fromJson(jsonDecode(data));
  //     GlobalCache().setData(memberData);
  //     _subjectAuthenData.sink
  //         .add(ApiResponse<LoginData>(Status.SUCCESS, memberData, null));
  //     return;
  //   }
  // }

  @override
  void dispose() {
   _subjectAuthenData.close();
   _subjectSigninAccount.close();
  }
}
