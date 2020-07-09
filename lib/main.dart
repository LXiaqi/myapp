import 'package:flutter/material.dart';
import './demo/listview_demo.dart';
import './demo/hello_demo.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Home();
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        // debugShowCheckedModeBanner: false,
        home: Scaffold(
            backgroundColor: Colors.grey[100],
            appBar: AppBar(
              title: Text('FlutterApp'),
              elevation: 30.0, // 阴影
            ),
            body: ListViewDemo()),
        theme: ThemeData(primarySwatch: Colors.yellow));
  }
}
