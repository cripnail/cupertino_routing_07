import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileViewNested extends StatefulWidget {
  @override
  _ProfileViewNestedState createState() => _ProfileViewNestedState();
}

class _ProfileViewNestedState extends State<ProfileViewNested> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: Colors.amber[300],
      child: Center(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text('Nested'),
        ],
      )),
    );
  }
}
