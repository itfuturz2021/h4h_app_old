import 'package:flutter/material.dart';

class servicesDetail extends StatefulWidget {
  @override
  _servicesDetailState createState() => _servicesDetailState();
}

class _servicesDetailState extends State<servicesDetail> {
  String unitHintText = "Select Area";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[300],
        centerTitle: true,
        title: Text(
          "Services Detail",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.025,
            ),
            Card(
              shape: RoundedRectangleBorder(
                  side: new BorderSide(color: Colors.blue[300], width: 1.0),
                  borderRadius: BorderRadius.circular(15.0)),
              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  icon: Icon(
                    Icons.arrow_drop_down,
                    size: 40,
                    color: Colors.blue[300],
                  ),
                  items: <String>[
                    "Katargam",
                    "Varachha",
                    "Althan",
                    "Pandesara",
                    "Dindoli",
                    "Dabholi",
                    "Bhatar",
                    "vesu"
                  ].map((String value) {
                    return new DropdownMenuItem<String>(
                      value: value,
                      child: new Text(value),
                    );
                  }).toList(),
                  hint: Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width * 0.83,
                    child: Center(
                      child: Text(
                        unitHintText,
                        style: TextStyle(color: Colors.black45),
                      ),
                    ),
                  ),
                  onChanged: (value) {
                    setState(() {
                      unitHintText = value;
                    });
                  },
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: 10,
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
      ),
    );
  }
}
