import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home_view_nested.dart';

class HomeViewDetail extends StatefulWidget {
  @override
  _HomeViewDetailState createState() => _HomeViewDetailState();
}

class _HomeViewDetailState extends State<HomeViewDetail> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: Colors.purple[400],
      child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text('Home View Detail'),
              ElevatedButton(
                  child: Text('Go to nested page'),
                  onPressed: () {
                    Navigator.of(context)
                        .push(CupertinoPageRoute(builder: (BuildContext context) {
                      return HomeViewNested();
                    }));
                  })
            ],
          )),
    );
  }
}