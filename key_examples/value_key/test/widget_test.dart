// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:value_key/main.dart';

void main() {
  testWidgets('HomePage test', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());

    // Test if the first TextField is present
    expect(find.byKey(const ValueKey(1)), findsOneWidget);

    // Test if the second TextField is present
    expect(find.byKey(const ValueKey(2)), findsOneWidget);

    // Tap on the FloatingActionButton to hide the first TextField
    await tester.tap(find.byType(FloatingActionButton));
    await tester.pump();

    // Test if the first TextField is not present
    expect(find.byKey(const ValueKey(1)), findsNothing);

    // Test if the second TextField is still present
    expect(find.byKey(const ValueKey(2)), findsOneWidget);
  });
}
