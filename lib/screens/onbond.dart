// ignore_for_file: prefer_const_constructors, deprecated_member_use, unused_import

import 'package:flutter/material.dart';
import 'package:onbond/screens/new.dart';
import 'package:onbond/screens/secondpage.dart';

class OnBond extends StatelessWidget {
  const OnBond({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(children: [
      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(15, 30, 15, 30),
          child: Image.asset('images/back.png'),
        ),
        Text('Skip'),
      ]),
      Container(
        margin: EdgeInsets.only(left: 15, right: 15, top: 20, bottom: 20),
        constraints: BoxConstraints.expand(height: 250),
        width: MediaQuery.of(context).size.width * 0.65,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/girl2.png'), fit: BoxFit.cover)),
      ),
      Container(
        margin: EdgeInsets.only(top: 20),
        width: MediaQuery.of(context).size.width * 65,
        child: Center(
          child: RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const NewPage()),
                );
              },
              padding:
                  EdgeInsets.only(top: 10, bottom: 10, right: 10, left: 10),
              color: Colors.redAccent,
              textColor: Colors.white,
              child: Text(
                'Click Here'.toUpperCase(),
                style: TextStyle(fontSize: 10),
              )),
        ),
      )
    ])));
  }
}
