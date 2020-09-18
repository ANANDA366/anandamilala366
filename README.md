import 'package:flutter/material.dart';
void main() {
  runApp(new MaterialApp(
    home: new ClassCoba(),
  ));
}
class ClassCoba extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
         new Row( 
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           children: <Widget>[      
          Text("ANANDA",style: TextStyle(fontSize: 25,fontFamily:"times new roman")),
          Text("BRENA",style: TextStyle(fontSize: 25,fontFamily:"times new roman")),
          Text("MILALA",style: TextStyle(fontSize: 25,fontFamily:"times new roman")),
        ],
                              
      ),
                              
      ], 
           
    ));
  }
}
