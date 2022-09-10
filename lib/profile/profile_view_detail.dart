import 'package:cupertino_routing_tutorial_07/profile/profile_view_nested.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileViewDetail extends StatefulWidget {
  @override
  _ProfileViewDetailState createState() => _ProfileViewDetailState();
}

class _ProfileViewDetailState extends State<ProfileViewDetail> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: Colors.blue[300],
      child: Center(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text('Profile View Detail'),
          ElevatedButton(
              child: Text('Go to nested page'),
              onPressed: () {
                Navigator.of(context)
                    .push(CupertinoPageRoute(builder: (BuildContext context) {
                  return ProfileViewNested();
                }));
              })
        ],
      )),
    );
  }
}
