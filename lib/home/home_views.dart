import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home_view_detail.dart';

class HomeViewPage extends StatefulWidget {
  @override
  _HomeViewPageState createState() => _HomeViewPageState();
}

class _HomeViewPageState extends State<HomeViewPage> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: Colors.green[300],
      child: Center(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text('HomeView'),
          ElevatedButton(
              child: Text('Go to detail page'),
              onPressed: () {
                Navigator.of(context)
                    .push(CupertinoPageRoute(builder: (BuildContext context) {
                  return HomeViewDetail();
                }));
              })
        ],
      )),
    );
  }
}
