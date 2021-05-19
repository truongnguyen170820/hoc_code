import 'package:flutter/material.dart';
import 'package:flutter_app/utils/screen/screen_util.dart';

class Global {
}
setHeight(num value) {
  return ScreenUtil().setHeight(value);
}

setWidth(num value) {
  return ScreenUtil().setWidth(value);
}
//Cỡ chữ
setSp(num value) {
  return ScreenUtil().setSp(value);
}

void dismissKeyboard(BuildContext context) {
  FocusScope.of(context).unfocus();
}