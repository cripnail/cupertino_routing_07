import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeViewNested extends StatefulWidget {
  @override
  _HomeViewNestedState createState() => _HomeViewNestedState();
}

class _HomeViewNestedState extends State<HomeViewNested> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: Colors.cyan[400],
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