import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/header.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: Header(),
        body: Container(padding: EdgeInsets.all(20.0), color: Colors.blue),
      ),
    );
  }
}
