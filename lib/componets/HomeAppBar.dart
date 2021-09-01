import 'package:e_com/styles/ConstText.dart';
import 'package:flutter/material.dart';

//Home Page App Bar
AppBar HomeAppBar() {
  return AppBar(
      title: Text(StaticText.homeAppBarTitle),
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
