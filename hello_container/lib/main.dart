import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Container App",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Container"),
        ),
        body: Container(
          margin: EdgeInsets.all(50.0),
          width: 300.0,
          height: 300.0,
          decoration: BoxDecoration(
            color: Colors.orange,
            gradient:
                LinearGradient(colors: [Colors.pink[50], Colors.pink[500]]),
            image: DecorationImage(
              image: NetworkImage("http://bit.ly/flutter_tiger"),
            ),
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.all(
              Radius.circular(50.0),
            ),
          ),
        ),
      ),
    );
  }
}
