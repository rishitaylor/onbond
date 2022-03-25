import 'package:flutter/material.dart';

class pain extends StatefulWidget {
  const pain({Key? key}) : super(key: key);

  @override
  State<pain> createState() => _painState();
}

class _painState extends State<pain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purpleAccent,
        title: Text('Feel Pain'),
      ),
      body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('images/pain1.jpg'),
                  fit: BoxFit.fitWidth))),
    );
  }
}

class pain2 extends StatefulWidget {
  const pain2({Key? key}) : super(key: key);

  @override
  State<pain2> createState() => _pain2State();
}

class _pain2State extends State<pain2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purpleAccent,
          title: Text('Feel Pain'),
        ),
        body: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/pain3.png'),
                    fit: BoxFit.fitWidth))));
  }
}

class pain3 extends StatefulWidget {
  const pain3({Key? key}) : super(key: key);

  @override
  State<pain3> createState() => _pain3State();
}

class _pain3State extends State<pain3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purpleAccent,
          title: Text('Feel Pain'),
        ),
        body: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/pain4.jpg'),
                    fit: BoxFit.cover))));
  }
}

class pain4 extends StatefulWidget {
  const pain4({Key? key}) : super(key: key);

  @override
  State<pain4> createState() => _pain4State();
}

class _pain4State extends State<pain4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purpleAccent,
          title: Text('Feel Pain'),
        ),
        body: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/pain5.jpg'),
                    fit: BoxFit.cover))));
  }
}
