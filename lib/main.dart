import 'package:designs_app/src/screens/basic_design.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material app',
      initialRoute: 'basic_design',
      routes: {'basic_design': (_) => BasicDesignScreen()},
    );
  }
}
