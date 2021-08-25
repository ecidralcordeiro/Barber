import 'package:flutter/material.dart';
import 'package:barber/nav.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Barber!',
      home: Nav(),
    );
  }
}
