import 'package:flutter/material.dart';
import 'package:h4h/component/appbar.dart';

class mycart extends StatefulWidget {
  @override
  _mycartState createState() => _mycartState();
}

class _mycartState extends State<mycart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(context, "My Cart"),
      body: Center(
        child: Text("helloooo"),
      ),
    );
  }
}
