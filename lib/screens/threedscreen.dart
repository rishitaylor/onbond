import 'package:flutter/material.dart';
import 'package:onbond/main.dart';
import 'package:onbond/screens/fourthscreen.dart';
import 'package:onbond/screens/secondpage.dart';
import 'package:onbond/screens/test.dart';

class threedpage extends StatefulWidget {
  const threedpage({Key? key}) : super(key: key);

  @override
  State<threedpage> createState() => _threedpageState();
}

class _threedpageState extends State<threedpage> {
  bool _obscureText = true;
  TextEditingController emailController = TextEditingController();

  TextEditingController passController = TextEditingController();

  final _text = TextEditingController();

  @override
  String? dispose() {
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Login page'),
          backgroundColor: Colors.purpleAccent,
        ),
        // appBar: AppBar(
        //   shadowColor: Colors.black,
        //   title: Text('Login Page'),
        // ),
        body: SizedBox(
            child: SingleChildScrollView(
                child: Center(
          child: Container(
            // constraints: BoxConstraints.expand(height: 610),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/girl.png'),
                    fit: BoxFit.fitWidth)),
            child: Center(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: TextField(
                      style: TextStyle(color: Colors.purpleAccent),
                      controller: emailController,
                      decoration: InputDecoration(
                          fillColor: Colors.purpleAccent,
                          filled: false,
                          prefixIcon: Icon(
                            Icons.male,
                            color: Colors.purpleAccent,
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.purpleAccent)),
                          enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.purpleAccent)),
                          labelText: 'Enter Email',
                          labelStyle: TextStyle(color: Colors.purpleAccent)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: TextField(
                      style: TextStyle(color: Colors.purpleAccent),
                      controller: passController,
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
                              borderSide:
                                  BorderSide(color: Colors.purpleAccent)),
                          enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.purpleAccent)),
                          labelText: 'Enter Password',
                          labelStyle: TextStyle(color: Colors.purpleAccent)),
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
                            if (checkforError()) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const drawerPage()),
                              );
                            }
                          },
                          padding: EdgeInsets.only(
                              top: 10, bottom: 10, right: 10, left: 10),
                          color: Colors.purpleAccent,
                          textColor: Colors.purpleAccent,
                          child: Text(
                            'Login'.toUpperCase(),
                            style: TextStyle(fontSize: 12),
                          )),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ))));
  }

  bool checkforError() {
    if (emailController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text('Please Enter FullName'),
      ));
      return false;
    } else if (passController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text('Please Enter  SurName'),
      ));
      return false;
    }
    {
      return true;
    }
  }
}
