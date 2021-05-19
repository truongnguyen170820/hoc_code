
import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter_app/utils/utilites.dart';
import 'package:flutter_app/view/testList/list_view_product.dart';

class ListStream {
  List<Product> list = [];
  StreamController _listStreamCtrl = new StreamController<List<Product>>();

  Stream<List<Product>> get getListStream => _listStreamCtrl.stream;

  setData(String name, String price, String amount, BuildContext context) {
    if (name == '') {
      Utilites.showToast(context, "bạn chưa nhập tên sản phẩm");
      return;
    }
    if (price == '') {
      Utilites.showToast(context, "bạn chưa nhập giá");
      return;
    }
    if (amount == '') {
      Utilites.showToast(context, "bạn chưa nhập số lượng");
      return;
    }
    list.add(Product(name, amount, price));
    _listStreamCtrl.sink.add(list);
  }

  seach(String name, BuildContext context) {
   var listSearch= list.where((element) =>
        element.nameProduct.toUpperCase().contains(name.toUpperCase())).toList();// đưa cùng về 1 kiểu chữ
    _listStreamCtrl.sink.add(listSearch);
  }
}