import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

//Will not change
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

//Will change
class _MyAppState extends State<MyApp> {
  String _title = "App Bar Demo";
  String _myState = "_NO STATE";

  void _onPressed(String message) {
    setState(() {
      _myState = message;        
    });
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: _title,
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text(_title),
          actions: <Widget>[
              new IconButton(
                icon: new Icon(Icons.add_alert),
                iconSize: 25.0,
                onPressed: (){_onPressed('Alert Pressed');},
              ),
              new IconButton(
                icon: new Icon(Icons.print),
                iconSize: 25.0,
                onPressed: (){_onPressed('Print Pressed');},
              ),
              new IconButton(
                icon: new Icon(Icons.people),
                iconSize: 25.0,
                onPressed: (){_onPressed('People Pressed');},
              ),
              new RaisedButton(
                color: Colors.greenAccent,
                child: new Text("Button"),
                onPressed: () {_onPressed("BOOM! The button was pressed.");},
              ),
            ],
          ),
        body: new Container(
          padding: const EdgeInsets.all(32.0),
          child: new Center(
            child: new Text(_myState),
          ),
        ),
      ),
    );
  }
}