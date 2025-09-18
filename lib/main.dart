import 'package:flutter/material.dart';
import 'patient_details_screen.dart';
import 'patient_result_screen.dart';

void main() {
  runApp(MaterialApp(
    title: "Patient Billing Calculation",
    initialRoute: '/',
    routes: {
  '/': (context)=> PatientDetailsScreen(),
  '/result': (context)=> PatientResultScreen()
    },
  ));
}

