import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: ListView(
        padding: EdgeInsets.zero,
        children: const [
          UserAccountsDrawerHeader(
            accountName: Text(
              'Naman Singh',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.white,
              ),
            ),
            accountEmail: Text(
              'namansinghjan2000@gmail.com',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
                color: Colors.white,
              ),
            ),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage('assets/images/profile2.jpeg'),
            ),
            decoration: BoxDecoration(
              color: Colors.purple,
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.home,
              color: Colors.black,
              size: 20,
            ),
            title: Text(
              'Home',
              textScaler: TextScaler.linear(1.3),
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.profile_circled,
              color: Colors.black,
              size: 20,
            ),
            title: Text(
              'Profile',
              textScaler: TextScaler.linear(1.3),
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.mail_solid,
              color: Colors.black,
              size: 20,
            ),
            title: Text(
              'Email',
              textScaler: TextScaler.linear(1.3),
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.heart_circle,
              color: Colors.black,
              size: 20,
            ),
            title: Text(
              'About',
              textScaler: TextScaler.linear(1.3),
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
