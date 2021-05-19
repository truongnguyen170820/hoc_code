import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app/blocs/list_view_bloc.dart';
import 'package:flutter_app/utils/color_utils.dart';
import 'package:flutter_app/utils/font_utils.dart';
import 'package:flutter_app/utils/utilites.dart';
import 'package:flutter_app/view/beTime/history_booking_page.dart';
import 'package:flutter_app/view/testList/view_item.dart';

class Product {
  String nameProduct;
  String amount;
  String price;

  Product(this.nameProduct, this.amount, this.price);
}

class ListViewProduct extends StatefulWidget {
  @override
  _ListViewProductState createState() => _ListViewProductState();
}

class _ListViewProductState extends State<ListViewProduct> {
  // final List<Product> list = [];
  List<Product> listProduct = [];
  ListStream bloc = ListStream();
  Product product;

  // List<Product> listProduct = List<Product>.generate(
  //     10, (index) => Product("mua không", "10.000", "10"));

  TextEditingController _nameProductController;
  TextEditingController _priceController;
  TextEditingController _amounController;
  TextEditingController _searchController;

  @override
  void initState() {
    _nameProductController = TextEditingController();
    _priceController = TextEditingController();
    _amounController = TextEditingController();
    _searchController = TextEditingController();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
        body: Container(
      child: Column(
        children: [
          SizedBox(
            height: 50,
            width: MediaQuery.of(context).size.width ,
            child: TextField(
              controller: _searchController,
              keyboardType: TextInputType.multiline,
              onChanged: (String value) {
                bloc.seach(value, context);
                print(bloc);
                // fitterData();
              },
              decoration: InputDecoration(hintText: "Tìm kiếm"),

            ),
          ),
          Expanded(
              child: StreamBuilder<List<Product>>(
                  stream: bloc.getListStream,
                  builder: (context, snapshot) {
                    if (snapshot.hasData) listProduct = snapshot.data;
                    return ListView.builder(
                        itemCount: listProduct.length,
                        itemBuilder: (context, index) {
                          return listViewItem(listProduct[index]);
                        });
                  })),
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
                        hintText: "nhập sản phẩm",
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
                        hintText: "Số lượng",
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
                        filled: true,
                        hintText: "Giá tiền",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ))),
              ),
              SizedBox(width: 10),
              SizedBox(
                height: 50,
                width: MediaQuery.of(context).size.width / 2,
                child: RaisedButton(
                  color: ColorUtils.MAIN_GRADIENT_1,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  onPressed: () {
                    bloc.setData(_nameProductController.text,
                        _priceController.text, _amounController.text, context);
                  },
                  child: Text(
                    "Thêm",
                    style: FontUtils.NORMAL.copyWith(color: ColorUtils.WHITE),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    ));
  }

  // check() {
  //   if (_nameProductController.text == '' ) {
  //     Utilites.showToast(context, "bạn chưa nhập tên sản phẩm");
  //     return;
  //   }
  //   if (_priceController.text == '') {
  //     Utilites.showToast(context, "bạn chưa nhập giá");
  //     return;
  //   }
  //   if (_amounController.text == '') {
  //     Utilites.showToast(context, "bạn chưa nhập số lượng");
  //     return;
  //   }
  //
  //   listProduct.add(Product(_nameProductController.text, _priceController.text,
  //       _amounController.text));
  // }

  fitterData() {

  }

  listViewItem(Product product) {
    return GestureDetector(
      onTap: () {
        _navigateAndDisplaySelection(context, product);
        // Navigator.push(context, MaterialPageRoute(builder: (context) => ViewItem(productView: product, list: listProduct,)));
      },
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(width: 0, color: ColorUtils.MAIN_GRADIENT_1)),
        padding: const EdgeInsets.all(13.0),
        child: Row(
          children: [
            Column(
              children: [
                Text("Sản phẩm: ${product.nameProduct} "),
                SizedBox(height: 10),
                Text("Giá tiền: ${product.price}")
              ],
            ),
            Spacer(),
            Text("SL:${product.amount} "),
            SizedBox(width: 30),
            GestureDetector(
              onTap: () {
                listProduct.remove(product);
                setState(() {});
              },
              child: Icon(
                Icons.delete,
              ),
            ),
          ],
        ),
      ),
    );
  }

  _navigateAndDisplaySelection(BuildContext context, Product product) async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => ViewItem(
                productView: product,
                listProduct: listProduct,
              )),
    );
    product = result;
    setState(() {});
  }
}
