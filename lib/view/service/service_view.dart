import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/view/list/fold/form_input_field.dart';

class Service {
  String name;
  double price;

  Service(this.name, this.price);
}

class ServiceView extends StatefulWidget {
  @override
  _ServiceViewState createState() => _ServiceViewState();
}

class _ServiceViewState extends State<ServiceView> {
  final List<Service> service = [];
  String dropdownValue = '1000';

  List<int> itemDropdown = List<int>.generate(5, (index) => index);
  List<String> labelDropdown = ["0", "1000", "10000", "100000", "1000000"];
  int selected = 1;
  TextEditingController _nameController;
  TextEditingController _priceController;
  TextEditingController _searchController;

  List<Service> listService = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _nameController = TextEditingController();
    _priceController = TextEditingController();
    _searchController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Danh sách dịch vụ"),
      ),
      body: Column(
        children: [
          Row(
            children: [
              SizedBox(
                height: 50,
                width: MediaQuery.of(context).size.width / 2,
                child: TextField(
                  controller: _nameController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      hintText: "Tên dịch vụ",
                      hintStyle: TextStyle(color: Colors.blue)),
                ),
              ),
              SizedBox(
                width: 5,
              ),
              SizedBox(
                height: 50,
                width: MediaQuery.of(context).size.width / 2 - 5,
                child: TextField(
                  controller: _priceController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      hintText: "Số tiền",
                      hintStyle: TextStyle(color: Colors.black)),
                ),
              ),
            ],
          ),
          RaisedButton(
            onPressed: () {
              print("name: ${_nameController.text}");
              print("price: ${_priceController.text}");
              service.add(Service(
                  _nameController.text, double.parse(_priceController.text)));
              setState(() {});
            },
            child: Center(
              child: Text(
                'Lưu',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Row(
            children: [
              SizedBox(
                height: 50,
                width: MediaQuery.of(context).size.width / 2 - 5,
                child: DropdownButton(
                    value: selected,
                    items: itemDropdown.map<DropdownMenuItem<int>>((int value) {
                      return DropdownMenuItem(
                          value: value, child: Text("${labelDropdown[value]}"));
                    }).toList(),
                    onChanged: (int index) {
                      selected=index;
                      fitterData();
                    }
                    ),
              ),
              SizedBox(
                height: 50,
                width: MediaQuery.of(context).size.width / 2,
                child: TextField(
                  controller: _searchController,
                  onChanged: (String value){
                    fitterData();
                  },
                  decoration: InputDecoration(
                      hintText: "Tìm kiếm"
                  ),
                ),
              )
            ],
          ),

          listService.length == 0
              ? Text("Chưa có dữ liệu!")
              : Expanded(
                  child: ListView.builder(
                      itemCount: listService.length,
                      itemBuilder: (context, index) {
                        return ItemList(
                          service: listService[index],
                        );
                      }),
                )
        ],
      ),
    );
  }
  fitterData(){
    setState(() {
      if (selected == 1) {
        listService = service
            .where((element) => element.price > 1000 && element.name.contains(_searchController?.text??""))
            .toList();
      }else if(selected == 2){
        listService = service
            .where((element) => element.price > 10000  && element.name.contains(_searchController?.text??""))
            .toList();
      }else if(selected == 3){
        listService = service
            .where((element) => element.price > 100000  && element.name.contains(_searchController?.text??""))
            .toList();
      }
      else if(selected == 4){
        listService = service
            .where((element) => element.price > 1000000  && element.name.contains(_searchController?.text??""))
            .toList();
      }
      else{
        listService=service.where((element) => element.name.contains(_searchController?.text??"")).toList();
      }
    });
  }
}

class ItemList extends StatelessWidget {
  final Service service;

  const ItemList({this.service});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.print,),
        Column(
          children: [
            Text(
              service.name ?? "",
              style: TextStyle(fontSize: 15, color: Colors.black, ),
            ),
            Text("${service.price ?? 0} ", style: TextStyle(color: Colors.black54),)
          ],
        )
      ],
    );
  }
}
