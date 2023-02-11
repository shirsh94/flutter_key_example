// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:all_key_examples/main.dart';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Open drawer', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: MyApp()));

    final openDrawerFinder = find.byType(ElevatedButton);
    expect(openDrawerFinder, findsOneWidget);
    await tester.tap(openDrawerFinder);

    await tester.pumpAndSettle();

    final drawerFinder = find.byType(Drawer);
    expect(drawerFinder, findsOneWidget);
  });
}
