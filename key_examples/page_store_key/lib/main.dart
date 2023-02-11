import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(text: 'Tab 1'),
                Tab(text: 'Tab 2'),
              ],
            ),
            title: Text('PageStorageKey Example'),
          ),
          body: TabBarView(
            children: [
              // Use a unique PageStorageKey for each tab
              MyPage(key: PageStorageKey('tab_1')),
              MyPage(key: PageStorageKey('tab_2')),
            ],
          ),
        ),
      ),
    );
  }
}

class MyPage extends StatefulWidget {
  MyPage({Key? key}) : super(key: key);

  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('You have pressed the button $_counter times.'),
            ElevatedButton(
              onPressed: _incrementCounter,
              child: Text('Increment'),
            ),
          ],
        ),
      ),
    );
  }
}