import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/blue_text.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(body: Center(child: BlueText())),
    );
  }
}
