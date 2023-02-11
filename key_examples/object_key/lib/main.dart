import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Example of Object Key in Flutter'),
              MyWidget(key: ObjectKey('key1')),
              MyWidget(key: ObjectKey('key2')),
              MyWidget(key: ObjectKey('key3')),
            ],
          ),
        ),
      ),
    );
  }
}

class MyWidget extends StatefulWidget {
  MyWidget({Key? key}) : super(key: key);

  @override
  _MyWidgetState createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          Text('Widget with Object Key: ${widget.key}'),
          Text('Counter: $_counter'),
          ElevatedButton(
            onPressed: _incrementCounter,
            child: Text('Increment'),
          ),
        ],
      ),
    );
  }
}
