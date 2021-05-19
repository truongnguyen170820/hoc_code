
import 'package:flutter_app/model/base_request.dart';

class SigninAccountRequest extends BaseRequest{
String phone_number;
String password;
String domainName;

SigninAccountRequest(this.phone_number, this.password, this.domainName);

Map<String, String> toMap(){
  Map<String, String>map = new Map();
  map["Username"] = phone_number;
  map["Password"] = password;
  map["DomainName"] = domainName;

  return map;
}
}