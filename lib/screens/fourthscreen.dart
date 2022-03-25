// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

// ignore: camel_case_types
class fourthScreen extends StatefulWidget {
  const fourthScreen({Key? key}) : super(key: key);

  @override
  State<fourthScreen> createState() => _fourthScreenState();
}

// ignore: camel_case_types
class _fourthScreenState extends State<fourthScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Done'),
        backgroundColor: Colors.redAccent,
      ),
      body: Center(
        child: Text(
          'Login Success :)',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
