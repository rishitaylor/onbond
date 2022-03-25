import 'package:flutter/material.dart';
import 'package:onbond/screens/pain.dart';
import 'package:onbond/screens/secondpage.dart';
import 'package:onbond/screens/threedscreen.dart';

// ignore: camel_case_types
class drawerPage extends StatefulWidget {
  const drawerPage({Key? key}) : super(key: key);

  @override
  State<drawerPage> createState() => _drawerPageState();
}

// ignore: camel_case_types
class _drawerPageState extends State<drawerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purpleAccent,
        title: Text('Drawer Test'),
      ),
      drawer: Container(
        child: Drawer(
          backgroundColor: Colors.white,
          child: Padding(
            padding: EdgeInsets.zero,
            child: ListView(
              children: [
                UserAccountsDrawerHeader(
                  decoration: BoxDecoration(color: (Colors.purpleAccent)),
                  accountName: Text(
                    "P A I N",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  accountEmail: Text(
                    "pain@gmail.com",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  currentAccountPicture: CircleAvatar(
                      backgroundImage: AssetImage('images/pain.jpg')),
                  // decoration: BoxDecoration(
                  //   image: DecorationImage(
                  //     image: NetworkImage(
                  //       "https://appmaking.co/wp-content/uploads/2021/08/android-drawer-bg.jpeg",
                  //     ),
                  //     fit: BoxFit.fill,
                  //   ),
                  // ),
                  otherAccountsPictures: [
                    // CircleAvatar(
                    //   backgroundColor: Colors.white,
                    //   backgroundImage: NetworkImage(
                    //       "https://randomuser.me/api/portraits/women/74.jpg"),
                    // ),
                    // CircleAvatar(
                    //   backgroundColor: Colors.white,
                    //   backgroundImage: NetworkImage(
                    //       "https://randomuser.me/api/portraits/men/47.jpg"),
                    // ),
                  ],
                ),
                ListTile(
                  leading: Icon(Icons.ac_unit_sharp),
                  title: Text("Pain 1"),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const pain()),
                    );
                  },
                ),
                ListTile(
                  leading: Icon(Icons.ac_unit_sharp),
                  title: Text("Pain 2"),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const pain2()),
                    );
                  },
                ),
                ListTile(
                  leading: Icon(Icons.ac_unit_sharp),
                  title: Text("Pain 3"),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const pain3()),
                    );
                  },
                ),
                ListTile(
                  leading: Icon(Icons.ac_unit_sharp),
                  title: Text("pain 4"),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const pain4()),
                    );
                  },
                )
              ],
            ),
          ),
          // Add a ListView to the drawer. This ensures the user can scroll
          // through the options in the drawer if there isn't enough vertical
          // space to fit everything.
          // child: ListView(
          //   // Important: Remove any padding from the ListView.
          //   padding: EdgeInsets.zero,
          //   children: [
          //     DrawerHeader(
          //       decoration: BoxDecoration(color: Colors.purpleAccent),

          //       // image: DecorationImage(image: AssetImage('images/pain.jpg'))

          //       child: Text('Drawer Header'),
          //     ),
          //     ListTile(
          //       title: const Text('Item 1'),
          //       onTap: () {
          //         // Update the state of the app.
          //         // ...
          //       },
          //     ),
          //     ListTile(
          //       title: const Text('Item 2'),
          //       onTap: () {
          //         // Update the state of the app.
          //         // ...
          //       },
          //     ),
          //   ],
          // ),
        ),
      ),
    );
  }
}
