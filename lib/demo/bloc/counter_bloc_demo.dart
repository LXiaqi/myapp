import 'dart:async';
import 'package:flutter/material.dart';
import 'package:myapp/demo/state/state_management_demo.dart';

class CounterHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    CounterBloc _counterBloc = CounterProvider.of(context).bloc;
    return Center(
      child: StreamBuilder(
          initialData: 0,
          stream: _counterBloc.count,
          builder: (context, snapshot) {
            return ActionChip(
              label: Text('${snapshot.data}'),
              onPressed: () {
                // _counterBloc.log();
                _counterBloc.counter.add(1);
              },
            );
          }),
    );
  }
}

class CounterActionButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    CounterBloc _counterBloc = CounterProvider.of(context).bloc;
    return FloatingActionButton(
      child: Icon(Icons.add),
      onPressed: () {
        // _counterBloc.log();
        _counterBloc.counter.add(1);
      },
    );
  }
}

class CounterProvider extends InheritedWidget {
  final Widget child;
  final CounterBloc bloc;
  CounterProvider({
    this.child,
    this.bloc,
  }) : super(child: child);
  static CounterProvider of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<CounterProvider>();
  }

  @override
  bool updateShouldNotify(CounterProvider oldWidget) {
    return true;
  }
}

class CounterBloc {
  int _count = 0;

  final _counterActionCountroller = StreamController<int>();
  StreamSink<int> get counter => _counterActionCountroller.sink;

  final _counterContriller = StreamController<int>();
  Stream<int> get count => _counterContriller.stream;

  CounterBloc() {
    _counterActionCountroller.stream.listen((onData));
  }
  void onData(int data) {
    print('$data');
    _count = data + _count;
    _counterContriller.add(_count);
  }

  void disponse() {
    _counterActionCountroller.close();
    _counterContriller.close();
  }

  void log() {
    print('BLOC');
  }
}
