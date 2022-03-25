// ignore_for_file: prefer_const_constructors, unused_import

import 'package:flutter/material.dart';
import 'package:onbond/screens/new.dart';
import 'package:onbond/screens/onbond.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'OnBond',
      home: NewPage(),
      debugShowCheckedModeBanner: false,
      // initialRoute: '/',
      // routes: {
      //   '/': (context) => OnBond(),
      //   // '/second': (context) => OnBondTwo(),
      // },
    );
  }
}
