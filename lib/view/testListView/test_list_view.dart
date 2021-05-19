import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/utils/color_utils.dart';
import 'package:flutter_app/utils/font_utils.dart';
import 'package:flutter_app/view/testListView/showListView.dart';
import 'package:flutter_app/widget/global.dart';
import 'package:google_fonts/google_fonts.dart';

class ItemList {
  String image;
  String name;
  String time;

  ItemList(this.image, this.name, this.time);
}

class TestListView extends StatefulWidget {
  @override
  _TestListViewState createState() => _TestListViewState();
}

class _TestListViewState extends State<TestListView> {
  List<ItemList> listItem = List<ItemList>.generate(
      3,
      (index) => ItemList(
            "assets/images/${index%2==0?"ic_mua_dich_vu.png":"ic_nap_tien.png"}",
            "hello bạn nhỏ ${index+1}",
            "12:30",
          ));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
        itemCount: listItem.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> ShowListView(listItem[index])));
            },
            behavior: HitTestBehavior.translucent,
            child: Container(
              padding: const EdgeInsets.all(13.0),
              child: Row(
                children: [
                  CircleAvatar(
                    child: Image.asset(listItem[index].image),
                  ),

                  // Image.asset(getItemView(), height: setHeight(35)),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        listItem[index].name,
                        style: FontUtils.NORMAL,
                      ),
                      Text(
                        listItem[index].time,
                        style: GoogleFonts.roboto(color: ColorUtils.gray3),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
  getItemView(int type) {
    switch (type) {
      case 1:
        return "assets/images/ic_nap_tien.png";
      case 2:
        return "assets/images/ic_mua_dich_vu.png";
    }
  }
}

class listViewItem extends StatelessWidget {
  final ItemList item;
  int type;
  listViewItem({this.item, this.type});

  getItemView() {
    switch (type) {
      case 1:
        return "assets/images/ic_nap_tien.png";
      case 2:
        return "assets/images/ic_mua_dich_vu.png";
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context)=> ShowListView(item)));
      },
      behavior: HitTestBehavior.translucent,
      child: Container(
        padding: const EdgeInsets.all(13.0),
        child: Row(
          children: [
            CircleAvatar(
              child: Image.asset(getItemView()),
            ),

            // Image.asset(getItemView(), height: setHeight(35)),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "${item.name} ${type}",
                  style: FontUtils.NORMAL,
                ),
                Text(
                  item.time,
                  style: GoogleFonts.roboto(color: ColorUtils.gray3),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
