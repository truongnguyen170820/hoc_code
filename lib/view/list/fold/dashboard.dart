import 'package:flutter/material.dart';
import 'package:flutter_app/view/list/fold/form_input_field.dart';

class Item {
  String itemName;
  double itemPrice;

  Item({this.itemName, this.itemPrice});
}

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  List<Item> items = [];
  bool sort = false;

  final _formkey = GlobalKey<FormState>();

  TextEditingController _itemController;
  TextEditingController _priceController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _itemController = TextEditingController();
    _priceController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Form(
              key: _formkey,
              child: Column(
                children: [
                  FormInputField(
                    itemController: _itemController,
                    hintText: 'Item',
                    validateMessage: 'Please provide the item name',
                    keyboardType: TextInputType.text,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: FormInputField(
                          itemController: _priceController,
                          hintText: 'Price',
                          validateMessage: 'Please provide the price',
                          // keyboardType: TextInputType.text,
                          keyboardType: TextInputType.numberWithOptions(
                            decimal: true,
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          if (_formkey.currentState.validate()) {
                            items.add(Item(
                                itemName: _itemController.text,
                                itemPrice:
                                    double.parse(_priceController.text
                                    )
                            ));
                            setState(() {
                              // _itemController.clear();
                              // _priceController.clear();
                            });
                          }
                        },
                        icon: Icon(
                          Icons.subdirectory_arrow_left,
                          size: 20,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            DataTable(
              sortColumnIndex: 1,
              sortAscending: sort,
              columns: [
                DataColumn(
                  label: Text('item'),
                ),
                DataColumn(
                  numeric: true,
                  onSort: (int index, bool ascending) {
                    // if (ascending) {
                    //   items.sort((a, b) => b.itemPrice.compareTo(a.itemPrice));
                    // } else {
                    //   items.sort((a, b) => a.itemPrice.compareTo(b.itemPrice));
                    // }
                    setState(() {
                      sort = ascending;
                    });
                  },
                  label: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text('Price'),
                        ],
                      ),
                    ),
                  ), // label: Text('Price'),
                ),
              ],

              rows:
                mapItemToDataRows(items).toList(),
              // rows: [
              //   ...items.map(
              //     (e) => DataRow(
              //       cells: [
              //         DataCell(
              //           Text(e.itemName),
              //         ),
              //         DataCell(
              //           Text(e.itemPrice.toString()),
              //         ),
              //       ],
              //     ),
              //   ),
              //   DataRow(
              //     cells: [
              //       DataCell(Text(
              //         'Total amount',
              //         style: TextStyle(fontWeight: FontWeight.bold),
              //       )),
              //       DataCell(Text(items
              //           .fold(
              //               0,
              //               (previousValue, element) =>
              //                   previousValue + element.itemPrice)
              //           .toString())),
              //     ],
              //   ),
              // ],
            )
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _priceController.dispose();
    _itemController.dispose();
  }

  Iterable<DataRow> mapItemToDataRows(List<Item> items) {
    Iterable<DataRow> dataRows = items.map((item) {
      return DataRow(cells: [
        DataCell(
          Text(item.itemName),
        ),
        DataCell(
          Text(
            item.itemPrice.toString(),
          ),
        ),
      ]);
    });
    return dataRows;
  }
}

//thêm
