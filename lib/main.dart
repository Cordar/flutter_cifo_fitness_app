import 'package:activity_1_3/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "App de fitness",
      home: Scaffold(
        body: Center(
          child: HomePage(),
        ),
      ),
    );
  }
}
