import 'package:flutter/material.dart';
import 'package:test1/views/homepage.dart';

void main(List<String> args) {
  runApp(const MyApplication());
}

class MyApplication extends StatelessWidget {
  const MyApplication({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}
