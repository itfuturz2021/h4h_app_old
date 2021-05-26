import 'package:flutter/material.dart';

class mycart extends StatefulWidget {
  @override
  _mycartState createState() => _mycartState();
}

class _mycartState extends State<mycart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "My cart",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue[300],
      ),
      body: Center(
        child: Text("helloooo"),
      ),
    );
  }
}
