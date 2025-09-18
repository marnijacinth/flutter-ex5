// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_application_5/main.dart';
import 'package:flutter_application_5/patient_details_screen.dart';
import 'package:flutter_application_5/patient_result_screen.dart';

void main() {
  testWidgets('App loads without error', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MaterialApp(
      title: "Student Mark Calculation",
      initialRoute: '/',
      routes: {
  '/': (context) => PatientDetailsScreen(),
  '/result': (context) => PatientResultScreen(),
      },
    ));

  // Verify that the Patient Details Screen is shown
  expect(find.text('Patient Details Screen'), findsOneWidget);
  });
}
