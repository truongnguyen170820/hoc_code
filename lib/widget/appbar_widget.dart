import 'package:flutter/material.dart';
import 'package:flutter_app/utils/color_utils.dart';
import 'package:flutter_app/widget/global.dart';
import 'package:google_fonts/google_fonts.dart';

Widget appBar(BuildContext context, String title){
  return AppBar(
    leading: IconButton(
      icon: Icon(Icons.arrow_back_ios, color: ColorUtils.WHITE, ),
      onPressed: () => Navigator.pop(context) ,

    ),
    title: Text(title,
      style: GoogleFonts.roboto(
        color: ColorUtils.WHITE,
        fontSize: setSp(18)
      ),
    ),
    flexibleSpace: Container(
      decoration: BoxDecoration(gradient: ColorUtils.APPBAR_GRADIENT),
    ),
    centerTitle: true,
  );
}