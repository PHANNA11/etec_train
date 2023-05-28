import 'package:flutter/material.dart';
import 'package:test1/views/homepage.dart';
import 'package:test1/views/widget/gridview_widget.dart';
import 'package:test1/views/widget/input_wiget.dart';

void main(List<String> args) {
  runApp(const MyApplication());
}

class MyApplication extends StatelessWidget {
  const MyApplication({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: GridViewWidget());
  }
}
