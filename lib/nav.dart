import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Nav {
  final IconData icon;
  final String title;

  Nav({this.icon, this.title});

  Nav.fromMap(Map<String, dynamic> json)
  : this(
  icon: json['icon'],
  title: json['title'],
  );
}

List<Nav> navs = [
  Nav(icon: Icons.home, title: "Home page"),
  Nav(icon: Icons.account_circle, title: "Profile"),
];

