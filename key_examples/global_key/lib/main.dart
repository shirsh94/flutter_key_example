import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  final _key = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      appBar: AppBar(title: const Text("Global Key Example")),
      body: Center(
        child: ElevatedButton(
          child: const Text("Open Drawer"),
          onPressed: () {
            _key.currentState?.openDrawer();
          },
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              title: const Text("Item 1"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text("Item 2"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
