import 'package:flutter/material.dart';

class ButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Widget flatButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        FlatButton(
          onPressed: () {},
          child: Text('Button'),
          splashColor: Colors.green,
          textColor: Theme.of(context).accentColor,
        ),
        FlatButton.icon(
          onPressed: () {},
          icon: Icon(Icons.add),
          label: Text('Button'),
          splashColor: Colors.green,
          textColor: Theme.of(context).accentColor,
        ),
      ],
    );
    final Widget raisedButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Theme(
          data: Theme.of(context).copyWith(
            buttonColor: Theme.of(context).accentColor,
            buttonTheme: ButtonThemeData(
              textTheme: ButtonTextTheme.primary,
              // shape: BeveledRectangleBorder(
              //   borderRadius: BorderRadius.circular(5.0),
              // ),
              shape: StadiumBorder(),
            ),
          ),
          child: RaisedButton(
            onPressed: () {},
            child: Text('Button'),
            splashColor: Colors.green,
            // textColor: Colors.white,
            // color: Theme.of(context).accentColor,
            // textTheme: ButtonTextTheme.primary,
          ),
        ),
        SizedBox(width: 30.0),
        RaisedButton.icon(
          onPressed: () {},
          icon: Icon(Icons.add),
          label: Text('Button'),
          splashColor: Colors.green,
          elevation: 12.0,
          textColor: Theme.of(context).accentColor,
        ),
      ],
    );
    final Widget outLineButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Theme(
          data: Theme.of(context).copyWith(
            buttonColor: Theme.of(context).accentColor,
            buttonTheme: ButtonThemeData(
              textTheme: ButtonTextTheme.primary,
              // shape: BeveledRectangleBorder(
              //   borderRadius: BorderRadius.circular(5.0),
              // ),
              shape: StadiumBorder(),
            ),
          ),
          child: OutlineButton(
            onPressed: () {},
            child: Text('Button'),
            splashColor: Colors.green,
            borderSide: BorderSide(color: Colors.black),
            textColor: Colors.black,
            highlightColor: Colors.grey,
            // textColor: Colors.white,
            // color: Theme.of(context).accentColor,
            // textTheme: ButtonTextTheme.primary,
          ),
        ),
        SizedBox(width: 30.0),
        OutlineButton.icon(
          onPressed: () {},
          icon: Icon(Icons.add),
          label: Text('Button'),
          splashColor: Colors.green,
          textColor: Theme.of(context).accentColor,
        ),
      ],
    );
    final Widget fixedWidthButton = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 160.0,
          child: OutlineButton(
            onPressed: () {},
            child: Text('Button'),
            splashColor: Colors.green,
            borderSide: BorderSide(color: Colors.black),
            textColor: Colors.black,
            highlightColor: Colors.grey,
            // textColor: Colors.white,
            // color: Theme.of(context).accentColor,
            // textTheme: ButtonTextTheme.primary,
          ),
        ),
      ],
    );
    final Widget expandedButton = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Expanded(
          child: OutlineButton(
            onPressed: () {},
            child: Text('Button'),
            splashColor: Colors.green,
            borderSide: BorderSide(color: Colors.black),
            textColor: Colors.black,
            highlightColor: Colors.grey,
            // textColor: Colors.white,
            // color: Theme.of(context).accentColor,
            // textTheme: ButtonTextTheme.primary,
          ),
        ),
        SizedBox(width: 32.0),
        Expanded(
          flex: 2,
          child: OutlineButton(
            onPressed: () {},
            child: Text('Button'),
            splashColor: Colors.green,
            borderSide: BorderSide(color: Colors.black),
            textColor: Colors.black,
            highlightColor: Colors.grey,
            // textColor: Colors.white,
            // color: Theme.of(context).accentColor,
            // textTheme: ButtonTextTheme.primary,
          ),
        ),
      ],
    );
    final Widget buttonBarDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Theme(
          data: Theme.of(context).copyWith(
            buttonTheme: ButtonThemeData(
              padding: EdgeInsets.symmetric(horizontal: 48.0),
            ),
          ),
          child: ButtonBar(
            children: <Widget>[
              OutlineButton(
                onPressed: () {},
                child: Text('Button'),
                splashColor: Colors.green,
                borderSide: BorderSide(color: Colors.black),
                textColor: Colors.black,
                highlightColor: Colors.grey,
                // textColor: Colors.white,
                // color: Theme.of(context).accentColor,
                // textTheme: ButtonTextTheme.primary,
              ),
              OutlineButton(
                onPressed: () {},
                child: Text('Button'),
                splashColor: Colors.green,
                borderSide: BorderSide(color: Colors.black),
                textColor: Colors.black,
                highlightColor: Colors.grey,
                // textColor: Colors.white,
                // color: Theme.of(context).accentColor,
                // textTheme: ButtonTextTheme.primary,
              ),
            ],
          ),
        ),
      ],
    );
    return Scaffold(
      appBar: AppBar(
        title: Text('ButtonDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            flatButtonDemo,
            raisedButtonDemo,
            outLineButtonDemo,
            fixedWidthButton,
            expandedButton,
            buttonBarDemo,
          ],
        ),
      ),
    );
  }
}
