import 'package:flutter/material.dart';
import 'dart:async';

class StreamDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('StreamDemo'),
        elevation: 0.0,
      ),
      body: StreamDemoHome(),
    );
  }
}

class StreamDemoHome extends StatefulWidget {
  @override
  _StreamDemoHomeState createState() => _StreamDemoHomeState();
}

class _StreamDemoHomeState extends State<StreamDemoHome> {
  StreamSubscription _streamSubscription;
  StreamController<String> _streamDemo;
  StreamSink _sinkDemo;
  String _data = '...';
  @override
  void dispose() {
    // TODO: implement dispose
    _streamDemo.close();
    super.dispose();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print('Create a stream');
    // Stream<String> _streamDemo = Stream.fromFuture(fetchData());
    _streamDemo = StreamController.broadcast();
    _sinkDemo = _streamDemo.sink;
    print('Start listening on a stream');
    _streamSubscription =
        _streamDemo.stream.listen(onData, onError: onError, onDone: onDone);
    _streamDemo.stream.listen(onDataTwo, onError: onError, onDone: onDone);
    print('Initialize completed.');
  }

  void onDataTwo(String data) {
    setState(() {
      _data = data;
    });
    print('onDataTwo:$data');
  }

  void onData(String data) {
    print('$data');
  }

  void onError(error) {
    print('Erroe:$error');
  }

  void onDone() {
    print('Done!');
  }

  void _pauseStream() {
    print('停止暂停订阅');
    _streamSubscription.pause();
  }

  void _resumeStream() {
    print('恢复订阅');
    _streamSubscription.resume();
  }

  void _cancelStream() {
    print('取消订阅');
    _streamSubscription.cancel();
  }

  void _addDataToStream() async {
    print('Add data to stream');
    String data = await fetchData();
    // _streamDemo.add(data);
    _sinkDemo.add(data);
  }

  Future<String> fetchData() async {
    await Future.delayed(Duration(seconds: 5));
    return 'hello Flutter~';
    // throw 'Someting happended';
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Text(
            //   _data,
            //   style: TextStyle(color: Colors.orange, fontSize: 32.0),
            // ),
            StreamBuilder(
              stream: _streamDemo.stream,
              initialData: '....',
              builder: (context, snapshot) {
                return Text('${snapshot.data}');
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FlatButton(onPressed: _addDataToStream, child: Text('Add')),
                FlatButton(onPressed: _pauseStream, child: Text('Pause')),
                FlatButton(onPressed: _resumeStream, child: Text('Resume')),
                FlatButton(onPressed: _cancelStream, child: Text('Cancel')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
