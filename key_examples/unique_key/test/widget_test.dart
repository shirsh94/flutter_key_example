// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:unique_key/main.dart';

void main() {
  testWidgets('ColourPositionedTiles widget test', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: ColourPositionedTiles()));

    // Check if there are two StatelessColorfulTile widgets.
    expect(find.byType(StatelessColorfulTile), findsNWidgets(2));

    // Check the color of the first tile.
    final firstTile = tester.firstWidget(find.byType(StatelessColorfulTile));
    final firstTileColor = (firstTile as StatelessColorfulTile).myColor;

    // Tap the FloatingActionButton to swap the tiles.
    await tester.tap(find.byType(FloatingActionButton));
    await tester.pump();

    // Check if the color of the first tile has changed.
    final updatedFirstTile = tester.firstWidget(find.byType(StatelessColorfulTile));
    final updatedFirstTileColor = (updatedFirstTile as StatelessColorfulTile).myColor;
    expect(updatedFirstTileColor, isNot(equals(firstTileColor)));
  });
}
