import 'package:flutter/material.dart';

class ExpansionpanelItem {
  final String headerText;
  final Widget body;
  bool isExpanded;

  ExpansionpanelItem({
    this.headerText,
    this.body,
    this.isExpanded,
  });
}

class ExpansionPanelDemo extends StatefulWidget {
  @override
  _ExpansionPanelDemoState createState() => _ExpansionPanelDemoState();
}

class _ExpansionPanelDemoState extends State<ExpansionPanelDemo> {
  List<ExpansionpanelItem> _expansionPanelItems;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _expansionPanelItems = <ExpansionpanelItem>[
      ExpansionpanelItem(
        headerText: 'Panel A',
        body: Container(
          padding: EdgeInsets.all(16.0),
          width: double.infinity,
          child: Text('Contentr for Panel A.'),
        ),
        isExpanded: false,
      ),
      ExpansionpanelItem(
        headerText: 'Panel B',
        body: Container(
          padding: EdgeInsets.all(16.0),
          width: double.infinity,
          child: Text('Contentr for Panel B.'),
        ),
        isExpanded: false,
      ),
      ExpansionpanelItem(
        headerText: 'Panel C',
        body: Container(
          padding: EdgeInsets.all(16.0),
          width: double.infinity,
          child: Text('Contentr for Panel C.'),
        ),
        isExpanded: false,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ExpansionPanelDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ExpansionPanelList(
              expansionCallback: (int panelIndex, bool isExpanded) {
                setState(() {
                  _expansionPanelItems[panelIndex].isExpanded = !isExpanded;
                });
              },
              children: _expansionPanelItems.map(
                (ExpansionpanelItem item) {
                  return ExpansionPanel(
                    isExpanded: item.isExpanded,
                    body: item.body,
                    headerBuilder: (BuildContext context, bool isExpanded) {
                      return Container(
                        padding: EdgeInsets.all(16.0),
                        child: Text(
                          item.headerText,
                          style: Theme.of(context).textTheme.title,
                        ),
                      );
                    },
                  );
                },
              ).toList(),
            )
          ],
        ),
      ),
    );
  }
}
