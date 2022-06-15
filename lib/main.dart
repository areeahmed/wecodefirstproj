import 'package:flutter/material.dart';
void main() {
  runApp(const HelloKurdistanApp());
}

class HelloKurdistanApp extends StatelessWidget {
  const HelloKurdistanApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text("Hello Kurdistan")
        ),
      ),
    );
  }
}