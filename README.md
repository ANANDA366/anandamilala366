# anandamilala366
Aplication
import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    home: new ClassCoba(),
  ));
}

class ClassCoba extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.green,
        
        // leading: Icon(Icons.home),
        title: Text("Program kedua"),
        actions: <Widget>[
          Icon(Icons.settings),
          Icon(Icons.accessible),
          Icon(Icons.home),
        ],
      ),
      body:Text("Hello Word"),
      drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: const <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text(
                  'App Bar Application',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 24,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.message),
                title: Text('Messages'),
              ),
              ListTile(
                leading: Icon(Icons.account_circle),
                title: Text('Profile'),
              ),
              ListTile(
                leading: Icon(Icons.headset),
                title: Text('headset'),
              ),
              ListTile(
                leading: Icon(Icons.headset),
                title: Text('headset'),
              ),
              ListTile(
                leading: Icon(Icons.headset),
                title: Text('headset'),
              ),
              ListTile(
                leading: Icon(Icons.headset),
                title: Text('headset'),
              ),
            ],
          ),
      
      
      
      ),
    );
  }
}
