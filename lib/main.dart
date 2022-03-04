import 'package:di_flutter/src/Pages/basico_page.dart';
import 'package:di_flutter/src/Pages/botones_page.dart';
import 'package:di_flutter/src/Pages/scroll_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle.light.copyWith(statusBarColor: Colors.white));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App Diseños:)',
      initialRoute: ('botones'),
      routes: {
        'basico': (BuildContext context) => BasicoPage(),
        'scroll': (BuildContext context) => ScrollPage(),
        'botones': (BuildContext context) => BotonesPage()
      },
    );
  }
}
