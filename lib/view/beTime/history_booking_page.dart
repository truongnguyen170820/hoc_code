import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/utils/color_utils.dart';
import 'package:flutter_app/widget/appbar_widget.dart';
import 'package:flutter_app/widget/global.dart';
import 'package:google_fonts/google_fonts.dart';

class ItemHistory {
  String nameHistory;
  String imageUrl;
  String reviews;
  String date;
  String time;

  ItemHistory(this.nameHistory, this.imageUrl, this.reviews, this.date, this.time);
}

class HistoryBookingPage extends StatefulWidget {
  @override
  _HistoryBookingPageState createState() => _HistoryBookingPageState();
}

class _HistoryBookingPageState extends State<HistoryBookingPage> {
  List<ItemHistory> listService = List<ItemHistory>.generate(
      3,
      (index) => ItemHistory(
          "Gói giảm cân djaskhdjkashdkljashkldhaskld",
          "assets/images/anh.png",
          "rất tốt",
          "03/16/2021",
          "15:20:00 - 17:20:00"));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context, "Lịch sử đặt lịch"),
      body: ListView.builder(
        padding: EdgeInsets.all(10),
        itemCount: listService.length,
        itemBuilder: (context, index) {
          return Item(
            itemHistory: listService[index],
          );
        },
      ),
    );
  }
}

class Item extends StatelessWidget {
  final ItemHistory itemHistory;

  Item({this.itemHistory});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(border: Border(bottom:BorderSide(width: 0, color: Colors.black12))),
      padding: EdgeInsets.all(12),
      child: Row(
        children: [
          CircleAvatar(
            radius: 25,
            child: Image.asset(itemHistory.imageUrl, width: setWidth(105),),
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  constraints: BoxConstraints(maxWidth: 118),
                  child: Text(
                    itemHistory.nameHistory,
                    overflow: TextOverflow.ellipsis,
                    style: GoogleFonts.roboto(
                        fontSize: setSp(14), fontWeight: FontWeight.w600),

                  ),
                ),
                Text(
                  itemHistory.reviews,
                  style: GoogleFonts.roboto(
                      fontSize: setSp(12), color: ColorUtils.GREEN_TEXT),
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                    Image.asset("assets/images/ic_calendar.png", width: 14,),

                  SizedBox(width: setWidth(6)),
                  Text(
                    itemHistory.date,
                    style: GoogleFonts.roboto(
                        fontSize: setSp(11), color: ColorUtils.gray2),
                  ),
                ],
              ),
              Text(
               itemHistory.time,
                style: GoogleFonts.roboto(
                    color: ColorUtils.gray2,
                    fontSize: setSp(11),
                    fontWeight: FontWeight.w600),
              )
            ],
          )
        ],
      ),
    );
  }
}
