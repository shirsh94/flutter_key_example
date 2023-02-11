// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:object_key/main.dart';

void main() {
  testWidgets('Test Object Key Example', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());

    // Verify that the text 'Example of Object Key in Flutter' is present
    expect(find.text('Example of Object Key in Flutter'), findsOneWidget);

    // Verify that the widgets with Object Keys are present
    expect(find.byKey(ObjectKey('key1')), findsOneWidget);
    expect(find.byKey(ObjectKey('key2')), findsOneWidget);
    expect(find.byKey(ObjectKey('key3')), findsOneWidget);

    // Verify the text 'Counter: 0' is present in all widgets
    expect(find.text('Counter: 0'), findsNWidgets(3));

    // Tap the 'Increment' button
    await tester.tap(find.byType(ElevatedButton).first);
    await tester.pump();

    // Verify that the counter in the first widget has been incremented to 1
    expect(find.text('Counter: 1'), findsOneWidget);
  });

}
