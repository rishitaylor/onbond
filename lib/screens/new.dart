// ignore_for_file: prefer_const_constructors, unnecessary_import, deprecated_member_use

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:onbond/screens/secondpage.dart';
import 'package:onbond/screens/threedscreen.dart';

class NewPage extends StatefulWidget {
  const NewPage({Key? key}) : super(key: key);

  @override
  State<NewPage> createState() => _NewPageState();
}

class _NewPageState extends State<NewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        child: SingleChildScrollView(
          child: SafeArea(
              child: Column(children: [
            // Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            //   Padding(
            //     padding: const EdgeInsets.fromLTRB(15, 30, 15, 30),
            //     child: Image.asset('images/back.png'),
            //   ),
            //   Text('Skip')
            // ]),
            Container(
              // margin: EdgeInsets.only(left: 1, right: 1, top: 1, bottom: 1),
              constraints: BoxConstraints.expand(height: 280),
              // width: MediaQuery.of(context).size.width * 0.100,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('images/girl.png'), fit: BoxFit.cover)),
            ),
            // Container(
            //   margin: EdgeInsets.only(top: 25),
            //   child: Text(
            //     'New User?',
            //     style: TextStyle(
            //         fontWeight: FontWeight.bold, color: Colors.redAccent),
            //   ),
            // ),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Text(
                'New User Register here?',
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.purpleAccent),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 15),
              width: MediaQuery.of(context).size.width * 65,
              child: Center(
                child: RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SecondPage()),
                      );
                    },
                    padding: EdgeInsets.only(
                        top: 10, bottom: 10, right: 10, left: 10),
                    color: Colors.purpleAccent,
                    textColor: Colors.white,
                    child: Text(
                      'Register'.toUpperCase(),
                      style: TextStyle(fontSize: 12),
                    )),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 5),
              child: Text(
                'Already Have Account?',
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.purpleAccent),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 15),
              width: MediaQuery.of(context).size.width * 65,
              child: Center(
                child: RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const threedpage()),
                      );
                    },
                    padding: EdgeInsets.only(
                        top: 10, bottom: 10, right: 10, left: 10),
                    color: Colors.purpleAccent,
                    textColor: Colors.white,
                    child: Text(
                      'Login'.toUpperCase(),
                      style: TextStyle(fontSize: 12),
                    )),
              ),
            ),

            // Container(
            //   margin: EdgeInsets.only(top: 5),
            //   child: Text(
            //     'New User?',
            //     style:
            //         TextStyle(fontWeight: FontWeight.bold, color: Colors.redAccent),
            //   ),
            // )
          ])),
        ),
      ),
    );
  }
}
