import 'package:flutter/material.dart';

Widget mybuild(BuildContext context,String username,String password) {
  return Scaffold(
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(username),
          Text(password),
        ],
      ),
    ),
  );
}