import 'dart:io';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/material.dart';
import 'package:h4h/Comman/services.dart';

class item extends StatefulWidget {
  String catid, subcatid, name;
  item({this.catid, this.subcatid, this.name});
  @override
  _itemState createState() => _itemState();
}

class _itemState extends State<item> {
  bool isLoading = false;
  List data = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getitem();
  }

  getitem() async {
    try {
      final result = await InternetAddress.lookup('google.com');
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        setState(() {
          isLoading = true;
        });
        var body = {
          "categoryId": widget.catid,
          "subCategoryId": widget.subcatid,
        };

        Services.apiHandler(apiName: "admin/getItemOfCategory", body: body)
            .then((responseData) async {
          if (responseData.IsSuccess == true) {
            setState(() {
              data = responseData.Data;
              isLoading = false;
              print("123456");
              print(data);
            });
          }
        });
      }
    } on SocketException catch (_) {
      Fluttertoast.showToast(msg: "No Internet Connection");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue[300],
        title: Text(
          widget.name,
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: data.length,
                scrollDirection: Axis.vertical,
                itemBuilder: (BuildContext context, int index) => InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/detail');
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Card(
                          child: Container(
                            height: 160,
                            color: Colors.white,
                            child: Center(
                              child: InkWell(
                                onTap: () {
                                  Navigator.pushNamed(context, '/mycart');
                                },
                                child: Container(
                                  height: 100,
                                  width: 100,
                                  color: Colors.red,
                                  child: Text("hello"),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    )),
          ),
        ],
      ),
    );
  }
}
