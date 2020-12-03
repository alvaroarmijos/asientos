import 'package:clipp_asientos/modules/asientos_module.dart';
import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home:AsientosModule(),
      theme: ThemeData(
        primaryColor: Color(0xff35c47c),
        accentColor: Color(0xff19399f),
        primaryColorLight: Color(0xff9727d0)
      ),
    );
  }
}