import 'package:desafio003/src/pages/home_page.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xFF344955),
        accentColor: Color(0xFFF9AA33),
      ),
      home: HomePage(),
    );
  }
}
