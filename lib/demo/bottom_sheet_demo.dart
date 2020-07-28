import 'package:flutter/material.dart';
import 'dart:async';

class ButtomSheetDemo extends StatefulWidget {
  @override
  _ButtomSheetDemoState createState() => _ButtomSheetDemoState();
}

class _ButtomSheetDemoState extends State<ButtomSheetDemo> {
  final _bottomSheetScaffoldKey = GlobalKey<ScaffoldState>();
  _openButtomSheet() {
    _bottomSheetScaffoldKey.currentState
        .showBottomSheet((BuildContext context) {
      return ButtomAppBarDemo();
    });
  }

  Future _openModalButtomSheet() async {
    final option = await showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return ModalBottomDemo();
      },
    );
    print(option);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _bottomSheetScaffoldKey,
      appBar: AppBar(
        title: Text('ButtomSheetDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FlatButton(
                  onPressed: _openButtomSheet,
                  child: Text('Open ButtomSheet'),
                ),
                FlatButton(
                  onPressed: _openModalButtomSheet,
                  child: Text('Modal ButtomSheet'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class ButtomAppBarDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        height: 90.0,
        width: double.infinity,
        padding: EdgeInsets.all(16.0),
        child: Row(
          children: <Widget>[
            Icon(Icons.pause_circle_outline),
            SizedBox(width: 16.0),
            Text('01.30 / 03.35'),
            Expanded(
              child: Text('Fix you -coldplay', textAlign: TextAlign.right),
            ),
          ],
        ),
      ),
    );
  }
}

class ModalBottomDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      child: Column(
        children: <Widget>[
          ListTile(
            title: Text('Option A'),
            onTap: () {
              Navigator.pop(context, 'A');
            },
          ),
          ListTile(
            title: Text('Option B'),
            onTap: () {
              Navigator.pop(context, 'B');
            },
          ),
          ListTile(
            title: Text('Option C'),
            onTap: () {
              Navigator.pop(context, 'C');
            },
          ),
        ],
      ),
    );
  }
}
