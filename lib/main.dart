import 'package:flutter/material.dart';
import './demo/listview_demo.dart';
// import './demo/hello_demo.dart';
import './demo/drawer_demo.dart';
import './demo/bottom_navigationbar_demo.dart';
import './demo/basic_demo.dart';
import './demo/layout_demo.dart';
import './demo/view_demo.dart';
import './demo/slive_demo.dart';
import './demo/navigator_demo.dart';
import './demo/form_demo.dart';
import './demo/material_components.dart';
import './demo/state/state_management_demo.dart';
import './demo/stream/stream_demo.dart';
import './demo/rxdart/rxdart_demo.dart';
import './demo/bloc/bloc_demo.dart';
import './demo/http/http_demo.dart';
import './demo/adimation/animation_demo.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // debugShowCheckedModeBanner: false,
      // home: NavigatorDemo(),
      initialRoute: '/AnimationDemo',
      routes: {
        '/': (context) => Home(),
        '/about': (context) => P1age(title: 'Ablot'),
        '/form': (context) => FormDemo(),
        '/mdc': (context) => MaterialComponents(),
        '/state-management': (context) => StateManagementDemo(),
        '/Stream': (context) => StreamDemo(),
        '/RxDart': (context) => RxDartDemo(),
        '/BlocDemo': (context) => BlocDemo(),
        '/HttpDemo': (context) => HttpDemo(),
        '/AnimationDemo': (context) => AnimationDemo(),
      },
      theme: ThemeData(
        primarySwatch: Colors.pink,
        highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
        splashColor: Colors.white70,
        accentColor: Colors.orange,
      ),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
        length: 4,
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
                  Tab(icon: Icon(Icons.view_quilt)),
                ],
              ),
            ),
            body: TabBarView(
              children: <Widget>[
                ListViewDemo(),
                BasicDemo(),
                LayoutDemo(),
                SliveDemo(),
              ],
            ),
            drawer: DrawerDemo(),
            bottomNavigationBar: BottomNavigationBarDemo()));
  }
}
