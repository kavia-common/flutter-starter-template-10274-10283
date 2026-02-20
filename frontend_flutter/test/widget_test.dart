import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:frontend_flutter/main.dart';

void main() {
  testWidgets('App builds and shows notes screen basics', (WidgetTester tester) async {
    await tester.pumpWidget(const AppRoot());

    // MaterialApp should build; allow initial frames.
    await tester.pump(const Duration(milliseconds: 200));

    // The main screen has a FloatingActionButton to create notes.
    expect(find.byType(FloatingActionButton), findsOneWidget);

    // App bar title should be present (from dotenv or fallback).
    // In widget tests, dotenv may not be loaded; fallback is used.
    expect(find.text('Offline Notes'), findsOneWidget);
  });
}
