import 'package:flutter/material.dart';

class ChipDemo extends StatefulWidget {
  @override
  _ChipDemoState createState() => _ChipDemoState();
}

class _ChipDemoState extends State<ChipDemo> {
  List<String> _tags = ['Apple', 'Banner', 'Lemon'];
  String _action = 'Nonting';
  List<String> _selected = [];
  String _choice = 'Lemon';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ChipDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Wrap(
              spacing: 8.0,
              runSpacing: 8.0,
              children: <Widget>[
                Chip(label: Text('Lift')),
                Chip(label: Text('Sunset'), backgroundColor: Colors.orange),
                Chip(
                  label: Text('HelloFlutter'),
                  avatar: CircleAvatar(
                    backgroundColor: Colors.grey,
                    child: Text('善'),
                  ),
                ),
                Chip(
                  label: Text('HelloFlutter'),
                  avatar: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=2642101986,2097810381&fm=11&gp=0.jpg'),
                  ),
                ),
                Chip(
                  label: Text('City'),
                  onDeleted: () {},
                  deleteIcon: Icon(Icons.delete),
                  deleteIconColor: Colors.redAccent,
                  deleteButtonTooltipMessage: 'Remove this is tag',
                ),
                Divider(
                  color: Colors.grey,
                  height: 32.0,
                  // indent: 32.0,
                ),
                Wrap(
                  spacing: 8.0,
                  children: _tags.map((tag) {
                    return Chip(
                      label: Text(tag),
                      onDeleted: () {
                        setState(() {
                          _tags.remove(tag);
                        });
                      },
                    );
                  }).toList(),
                ),
                Divider(
                  color: Colors.grey,
                  height: 32.0,
                  // indent: 32.0,
                ),
                Container(
                  width: double.infinity,
                  child: Text('ActionChip: $_action'),
                ),
                Wrap(
                  spacing: 8.0,
                  children: _tags.map((tag) {
                    return ActionChip(
                      label: Text(tag),
                      onPressed: () {
                        setState(() {
                          _action = tag;
                        });
                      },
                    );
                  }).toList(),
                ),
                Divider(
                  color: Colors.grey,
                  height: 32.0,
                  // indent: 32.0,
                ),
                Container(
                  width: double.infinity,
                  child: Text('FilterChip: ${_selected.toString()}'),
                ),
                Wrap(
                  spacing: 8.0,
                  children: _tags.map((tag) {
                    return FilterChip(
                      label: Text(tag),
                      selected: _selected.contains(tag),
                      onSelected: (value) {
                        setState(() {
                          if (_selected.contains(tag)) {
                            _selected.remove(tag);
                          } else {
                            _selected.add(tag);
                          }
                        });
                      },
                    );
                  }).toList(),
                ),
                Divider(
                  color: Colors.grey,
                  height: 32.0,
                  // indent: 32.0,
                ),
                Container(
                  width: double.infinity,
                  child: Text('ChoiceChip: $_choice'),
                ),
                Wrap(
                  spacing: 8.0,
                  children: _tags.map((tag) {
                    return ChoiceChip(
                      label: Text(tag),
                      selectedColor: Colors.black,
                      selected: _choice == tag,
                      onSelected: (value) {
                        setState(() {
                          _choice = tag;
                        });
                      },
                    );
                  }).toList(),
                ),
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.restore),
        onPressed: () {
          setState(() {
            _tags = ['Apple', 'Banner', 'Lemon'];
            _selected = [];
            _choice = 'Lemon';
          });
        },
      ),
    );
  }
}
