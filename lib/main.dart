import 'package:di_flutter/src/Pages/basico_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App Diseños:)',
      initialRoute: ('basico'),
      routes: {'basico': (BuildContext context) => BasicoPage()},
    );
  }
}
