import 'dart:async';

import 'package:flutter_app/model/LoginData.dart';

class GlobalCache {
  static GlobalCache _instance;

  StreamController<String> depStreamCtrl = StreamController.broadcast();

  get getStreamCtrl => depStreamCtrl.stream;

  factory GlobalCache() => _instance ??= new GlobalCache._();

  GlobalCache._();

  LoginData loginData;

  LoginData getMember() {
    return loginData;
  }

  void setData(LoginData _member) {
    this.loginData = _member;
  }
}
