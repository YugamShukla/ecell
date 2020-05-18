import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Card(
                elevation: 10,
                child: Container(
                  height: 200,
                  width: 300,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(100),
                          bottomLeft:Radius.circular(100),
                      )
                  ),
                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Registration Number:189302073"),
                      Text("Batch:BTech(IT)"),
                    ],
                  ),
                ),
              ),
              Card(
                elevation: 10,
                child: Container(
                  height: 200,
                  width: 300,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(5),
                          bottomLeft:Radius.circular(5)
                      )
                  ),
                  child:  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Registration Number:189302073"),
                      Text("Batch:BTech(IT)"),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
