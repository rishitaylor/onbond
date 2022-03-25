// ignore: avoid_web_libraries_in_flutter

// ignore_for_file: deprecated_member_use, unused_import, avoid_web_libraries_in_flutter, duplicate_ignore

// import 'dart:ffi';
// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:onbond/screens/threedscreen.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  bool _obscureText = true;
  bool _obscureText2 = true;

  TextEditingController nameController = TextEditingController();

  TextEditingController sureNameController = TextEditingController();

  TextEditingController emailIdController = TextEditingController();

  TextEditingController passWordController = TextEditingController();

  TextEditingController confrimpassWordController = TextEditingController();

  final _text = TextEditingController();

  @override
  String? dispose() {
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.purpleAccent,
          title: Text(
            'Register page',
          )),
      body: SizedBox(
        child: SingleChildScrollView(
          child: Container(
            // constraints: BoxConstraints.expand(height: 610),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/pain2.png'),
                    fit: BoxFit.fitWidth)),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: TextField(
                    style: TextStyle(color: Colors.white),
                    controller: nameController,
                    decoration: InputDecoration(
                        fillColor: Colors.purpleAccent,
                        filled: false,
                        prefixIcon: Icon(
                          Icons.male,
                          color: Colors.purpleAccent,
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.purpleAccent)),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.purpleAccent)),
                        labelText: 'Enter Name',
                        labelStyle: TextStyle(color: Colors.white)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: TextField(
                    style: TextStyle(color: Colors.white),
                    controller: sureNameController,
                    decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.male,
                          color: Colors.purpleAccent,
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.purpleAccent)),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.purpleAccent)),
                        labelText: 'Enter Surname',
                        labelStyle: TextStyle(color: Colors.white)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: TextField(
                    style: TextStyle(color: Colors.white),
                    controller: emailIdController,
                    decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.email,
                          color: Colors.purpleAccent,
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.purpleAccent)),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.purpleAccent)),
                        labelText: 'Enter Email',
                        labelStyle: TextStyle(color: Colors.white)),
                  ),
                ),
                (Container(
                  margin: const EdgeInsets.all(15),
                  child: TextField(
                    style: TextStyle(color: Colors.white),
                    controller: passWordController,
                    obscureText: _obscureText,
                    decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.password,
                          color: Colors.purpleAccent,
                        ),
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              _obscureText = !_obscureText;
                            });
                          },
                          child: Icon(
                            _obscureText
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: Colors.purpleAccent,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.purpleAccent)),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.purpleAccent)),
                        labelText: 'Enter Password',
                        labelStyle: TextStyle(color: Colors.white)),
                  ),
                )),
                (Container(
                  margin: const EdgeInsets.all(15),
                  child: TextField(
                    style: TextStyle(color: Colors.white),
                    controller: confrimpassWordController,
                    obscureText: _obscureText2,
                    decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.password,
                          color: Colors.purpleAccent,
                        ),
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              _obscureText2 = !_obscureText2;
                            });
                          },
                          child: Icon(
                            _obscureText2
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: Colors.purpleAccent,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.purpleAccent)),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.purpleAccent)),
                        labelText: 'Enter Password',
                        labelStyle: TextStyle(color: Colors.white)),
                  ),
                )),
                Container(
                  margin: EdgeInsets.only(top: 15),
                  width: MediaQuery.of(context).size.width * 100,
                  child: Center(
                    child: RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        onPressed: () {
                          if (checkforError()) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const threedpage()),
                            );
                          }
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
                Center(
                    child: TextButton(
                  child: Text(
                    "New User? Register Your Account",
                    style: TextStyle(color: Colors.purpleAccent, fontSize: 15),
                  ),
                  onPressed: () {},
                )),
              ],
            ),
          ),
        ),
      ),
    );
  }

  bool checkforError() {
    if (sureNameController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text('Please Enter FullName'),
      ));
      return false;
    } else if (nameController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text('Please Enter  SurName'),
      ));
      return false;
    } else if (emailIdController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text('Please Enter Email id'),
      ));
      return false;
    } else if (passWordController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text('Please Enter Password'),
      ));
      return false;
    } else if (confrimpassWordController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Please Confrim Your Password')));
      return false;
    }
    {
      return true;
    }
  }
}
