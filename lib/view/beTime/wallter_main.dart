import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/utils/color_utils.dart';
import 'package:flutter_app/utils/screen/screen_util.dart';
import 'package:flutter_app/widget/global.dart';
import 'package:google_fonts/google_fonts.dart';

class Item {
  String service;
  Image image;
  String date;
  String money;
  String coin;

  Item(this.service, this.image, this.date, this.money, this.coin);
}

class WallterMain extends StatefulWidget {
  @override
  _WallterMainState createState() => _WallterMainState();
}

class _WallterMainState extends State<WallterMain> {

  int selecterMonth;
  List<Item> listItem = List<Item>.generate(
      3,
      (index) => Item(
          "mua hàng",
          Image.asset("assets/images/ic_mua_dich_vu.png"),
          "13:20",
          "1000",
          "10"));

  // List<Item> listItem = [];

  int type;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(gradient: ColorUtils.APPBAR_GRADIENT),
        ),
        title: Text(
          "Ví của tôi",
        ),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    "Ví của tôi",
                    style: GoogleFonts.roboto(
                        color: ColorUtils.gray3,
                        fontSize: setSp(18),
                        fontWeight: FontWeight.w400),
                  ),
                  Text(
                    "200.000VNĐ",
                    style: GoogleFonts.roboto(
                        color: ColorUtils.PINK_TEXT,
                        fontWeight: FontWeight.w600,
                        fontSize: setSp(39)),
                  ),
                  Row(
                    children: [
                      Text(
                        "Điểm của tôi: ",
                        style: GoogleFonts.roboto(
                            color: ColorUtils.gray3,
                            fontSize: setSp(17),
                            fontWeight: FontWeight.w400),
                      ),
                      Text(
                        "150 ",
                        style: GoogleFonts.roboto(
                            color: ColorUtils.SALE_PRICE_COLOR,
                            fontWeight: FontWeight.w500,
                            fontSize: setSp(16)),
                      ),
                      Image.asset(
                        "assets/images/xu_diem.png",
                        height: setHeight(20),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: setHeight(8),
              color: ColorUtils.gray5,
            ),
            Container(
              padding: EdgeInsets.all(16),
              child: Text(
                "Lịch sử giao dịch",
                style: GoogleFonts.roboto(
                  color: Colors.black45,
                  fontSize: setSp(14),
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: listItem.length,
                itemBuilder: (context, index) {
                  if (index % 2 == 0)
                    type = 1;
                  else
                    type = 2;
                  return ItemWallter(
                    item: listItem[index],
                    type: type,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ItemWallter extends StatelessWidget {
  final Item item;
  int type;

  ItemWallter({this.item, this.type});

  getItem() {
    switch (type) {
      case 1:
        return "assets/images/ic_nap_tien.png";
      case 2:
        return "assets/images/ic_mua_dich_vu.png";
    }
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(border: Border.all(width: 0, color: Colors.black12)),
      padding: const EdgeInsets.all(13.0),
      child: Row(
        children: [
          Image.asset(
            getItem(),
            height: setHeight(35),
          ),
          SizedBox(
            width: 9,
          ),
          Column(
            children: [
              Text(
                "Nạp thẻ vào ví",
                style: GoogleFonts.roboto(
                    fontSize: setSp(17), color: ColorUtils.TEXT_NORMAL),
              ),
              Text(
                "02/13/2021 11:16",
                style: GoogleFonts.roboto(
                    fontSize: setSp(13), color: ColorUtils.gray3),
              ),
            ],
          ),
          Spacer(),
          Column(
            children: [
              Text(
                "+200.000",
                style: GoogleFonts.roboto(
                    fontSize: setSp(17), color: ColorUtils.GREEN_TEXT),
              ),
              Row(
                children: [
                  Text(
                    "+50 ",
                    style: GoogleFonts.roboto(
                        fontSize: setSp(15),
                        color: ColorUtils.SALE_PRICE_COLOR),
                  ),
                  Image.asset(
                    "assets/images/xu_diem.png",
                    height: setHeight(20),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
