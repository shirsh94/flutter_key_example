// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:page_store_key/main.dart';

void main() {
  testWidgets('PageStorageKey Example Test', (tester) async {
    await tester.pumpWidget(MyApp());

    // Check that the app bar title is displayed correctly
    expect(find.text('PageStorageKey Example'), findsOneWidget);

    // Check that the two tabs are displayed correctly
    expect(find.text('Tab 1'), findsOneWidget);
    expect(find.text('Tab 2'), findsOneWidget);

    // Select the first tab
    await tester.tap(find.byType(Tab).first);
    await tester.pumpAndSettle();

    // Check that the text on the first tab is displayed correctly
    expect(find.text('You have pressed the button 0 times.'), findsOneWidget);

    // Increment the counter
    await tester.tap(find.byType(ElevatedButton));
    await tester.pumpAndSettle();

    // Check that the text on the first tab reflects the incremented counter
    expect(find.text('You have pressed the button 1 times.'), findsOneWidget);
  });
}
