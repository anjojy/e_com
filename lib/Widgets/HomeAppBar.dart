import 'package:flutter/material.dart';

AppBar HomeAppBar() {
  return AppBar(
      title: Text('OMAN PHONE'),
      centerTitle: true,
      elevation: 0,
      leading: Icon(
        Icons.menu,
        size: 30,
        color: Colors.white,
      ),
      actions: [
        Icon(
          Icons.notifications,
          size: 30,
          color: Colors.white,
        ),
        SizedBox(
          width: 10,
        ),
      ]);
}
