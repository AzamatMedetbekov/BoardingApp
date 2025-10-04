import 'package:flutter/material.dart';

class BlueText extends StatelessWidget {
  const BlueText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text("anything", style: TextStyle(fontSize: 100)),
      ),
    );
  }
}