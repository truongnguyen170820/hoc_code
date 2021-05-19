import 'package:flutter_app/model/LoginData.dart';

abstract class SigninAccountImpl{ //trừu tượng
  void onSigninAccountRequesting();
  void onSigninAccountSuccess(List<LoginData> response);
  void onSigninAccountError(String message);
}