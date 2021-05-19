import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app/utils/color_utils.dart';
import 'package:flutter_app/utils/font_utils.dart';
import 'package:flutter_app/utils/utilites.dart';
import 'package:flutter_app/view/testList/list_view_product.dart';
import 'package:flutter_app/view/testListView/test_list_view.dart';

class ViewItem extends StatefulWidget {
  final Product productView;
  final List<Product> listProduct;
  const ViewItem({Key key, this.productView, this.listProduct}) : super(key: key);

  @override
  _ViewItemState createState() => _ViewItemState();
}

class _ViewItemState extends State<ViewItem> {
  TextEditingController _nameProductController;
  TextEditingController _priceController;
  TextEditingController _amounController;
  Product product;

  @override
  void initState() {
    product = widget.productView;
    // TODO: implement initState
    super.initState();
    _nameProductController = TextEditingController();
    _priceController = TextEditingController();
    _amounController = TextEditingController();

    _nameProductController.text ="${product.nameProduct}";
    _priceController.text ="${product.price}";
    _amounController.text ="${product.amount}";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
      ),
      body: Column(
        children: [
          Row(
            children: [
              SizedBox(
                height: 50,
                width: MediaQuery.of(context).size.width / 2 - 10,
                child: TextField(
                    controller: _nameProductController,
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(10),
                        fillColor: Colors.white,
                        filled: true,
                        hintText: "${product.nameProduct}",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ))),
              ),
              SizedBox(width: 10),
              SizedBox(
                height: 50,
                width: MediaQuery.of(context).size.width / 2,
                child: TextField(
                    controller: _amounController,
                    keyboardType:
                        TextInputType.numberWithOptions(decimal: true),
                    inputFormatters: [
                      FilteringTextInputFormatter.allow(RegExp(r'^-?[0-9]+$')),
                    ],
                    decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        hintText: "${product.price}",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ))),
              ),
            ],
          ),
          Row(
            children: [
              SizedBox(
                height: 50,
                width: MediaQuery.of(context).size.width / 2 - 10,
                child: TextField(
                    controller: _priceController,
                    keyboardType:
                        TextInputType.numberWithOptions(decimal: true),
                    inputFormatters: [
                      FilteringTextInputFormatter.allow(RegExp(r'^-?[0-9]+$')),
                    ],

                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(10),
                        fillColor: Colors.white,
                        hintText: "${product.amount}",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ))),
              ),
              SizedBox(width: 10),
              SizedBox(
                height: 50,
                width: MediaQuery.of(context).size.width / 5,
                child: RaisedButton(
                  color: ColorUtils.MAIN_GRADIENT_1,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  onPressed: () {
                    // Navigator.pop(context, widget.list.add());
                    checkItem();
                    setState(() {});
                  },
                  child: Text(
                    "Sửa",
                    style: FontUtils.NORMAL.copyWith(color: ColorUtils.WHITE),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
                width: MediaQuery.of(context).size.width / 5,
                child: RaisedButton(
                  color: ColorUtils.MAIN_GRADIENT_1,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  onPressed: () {
                    widget.listProduct.remove(product);
                    Navigator.pop(context,);
                    setState(() {});
                  },
                  child: Text(
                    "Xóa",
                    style: FontUtils.NORMAL.copyWith(color: ColorUtils.WHITE),
                  ),
                ),
              ),
            ],
          ),

        ],
      ),
    );
  }

  checkItem() {
    product.nameProduct = _nameProductController.text;
    product.amount = _amounController.text;
    product.price = _priceController.text;
    // listItem.remove(widget.productView);
    // listItem.add(Product("${widget.productView.nameProduct}", "${widget.productView.price}", "${widget.productView.amount}"));
    Navigator.pop(context, product);
  }
}
