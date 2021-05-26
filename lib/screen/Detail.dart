import 'package:flutter/material.dart';

class detail extends StatefulWidget {
  @override
  _detailState createState() => _detailState();
}

class _detailState extends State<detail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue[300],
        title: Text(
          "Detail",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Center(
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
              )),
        ),
      ),
    );
  }
}
