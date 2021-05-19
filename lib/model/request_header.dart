import 'package:flutter/cupertino.dart';
import 'package:flutter_app/utils/global_cache.dart';

class Header{
  factory Header._() => null;

  Map<String, String> getHeader(){
    Map<String, String> map = new Map();
    map["Appkey"] = "1234567890abcdef";
    if(GlobalCache().loginData != null){
      map["SesionId"] = GlobalCache().loginData.sessionId;
    }
    return map;
  }
}