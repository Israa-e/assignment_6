import 'package:flutter/material.dart';

import '../core/routes.dart';

Drawer drawer(BuildContext context) {
  return Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: [
        DrawerHeader(
          decoration: BoxDecoration(color: Color(0xff827BEB)),
          child: Text(
            'Menu',
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
        ),
        ListTile(
          leading: Icon(Icons.home),
          title: Text('Home'),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: Icon(Icons.account_circle),
          title: Text('Account'),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: Icon(Icons.chat),
          title: Text('Chat'),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: Icon(Icons.explore),
          title: Text('Explore'),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: Icon(Icons.article),
          title: Text('Blog'),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: Icon(Icons.login),
          title: Text('Login'),
          onTap: () {
            Navigator.pushReplacementNamed(context, Routes.login);
          },
        ),
        ListTile(
          leading: Icon(Icons.logout_sharp),
          title: Text('Logout'),
          onTap: () {
            Navigator.pushReplacementNamed(context, Routes.signup);
          },
        ),
      ],
    ),
  );
}
