import 'package:flutter/material.dart';

class DrawerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        UserAccountsDrawerHeader(
          accountName:
              Text('狗子', style: TextStyle(fontWeight: FontWeight.bold)),
          accountEmail: Text('gouzi@163.com'),
          currentAccountPicture: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=2873034231,1191081182&fm=26&gp=0.jpg'),
          ),
          decoration: BoxDecoration(
              color: Colors.yellow[400],
              image: DecorationImage(
                  image: NetworkImage(
                      'https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=2565689134,788370536&fm=26&gp=0.jpg'),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                      Colors.yellow[400].withOpacity(0.6),
                      BlendMode.softLight))),
        ),
        ListTile(
          title: Text('Messages', textAlign: TextAlign.right),
          trailing: Icon(
            Icons.message,
            color: Colors.black12,
            size: 22.0,
          ),
          onTap: () => Navigator.pop(context),
        ),
        ListTile(
          title: Text('Favorite', textAlign: TextAlign.right),
          trailing: Icon(
            Icons.favorite,
            color: Colors.black12,
            size: 22.0,
          ),
          onTap: () => Navigator.pop(context),
        ),
        ListTile(
          title: Text('Settings', textAlign: TextAlign.right),
          trailing: Icon(
            Icons.settings,
            color: Colors.black12,
            size: 22.0,
          ),
          onTap: () => Navigator.pop(context),
        ),
      ],
    ));
  }
}
