import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  // Can be StatefulWidget too
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) =>
      const Scaffold(body: Center(child: Text('Home Page')));
}
