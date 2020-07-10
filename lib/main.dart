import 'package:flutter/material.dart';
import './demo/listview_demo.dart';
// import './demo/hello_demo.dart';
import './demo/drawer_demo.dart';
import './demo/bottom_navigationbar_demo.dart';
import './demo/basic_demo.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      // debugShowCheckedModeBanner: false,
      home: Home(),
      theme: ThemeData(
          primarySwatch: Colors.pink,
          highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
          splashColor: Colors.white70),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
        length: 3,
        child: Scaffold(
            backgroundColor: Colors.grey[100],
            appBar: AppBar(
              title: Text('FlutterApp'),
              actions: <Widget>[
                IconButton(
                    icon: Icon(Icons.search),
                    tooltip: 'search',
                    onPressed: () => debugPrint('点击右上角按钮')),
              ],
              elevation: 30.0,
              bottom: TabBar(
                unselectedLabelColor: Colors.black38,
                indicatorColor: Colors.black54,
                indicatorSize: TabBarIndicatorSize.label,
                tabs: <Widget>[
                  Tab(icon: Icon(Icons.local_florist)),
                  Tab(icon: Icon(Icons.change_history)),
                  Tab(icon: Icon(Icons.directions_bike)),
                ],
              ),
            ),
            body: TabBarView(
              children: <Widget>[
                ListViewDemo(),
                BasicDemo(),
                Icon(Icons.directions_bike, size: 128.0, color: Colors.black12),
              ],
            ),
            drawer: DrawerDemo(),
            bottomNavigationBar: BottomNavigationBarDemo()));
  }
}
