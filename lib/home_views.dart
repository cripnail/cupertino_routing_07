import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
            RaisedButton(
                child: Text('Go to default page'),
                onPressed: () {
                  Navigator.of(context).push(
                    CupertinoPageRoute(
                      builder: (BuildContext context) {
                        HomeViewDetail();
                      }
                    )
                  );
                })
          ],
      )),
    );
  }
}

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
              Text('HomeView detail'),
              RaisedButton(
                  child: Text('Go to nested page'),
                  onPressed: () {
                    Navigator.of(context).push(
                        CupertinoPageRoute(
                            builder: (BuildContext context) {
                              HomeViewNested();
                            }
                        )
                    );
                  })
            ],
          )),
    );
  }
}

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


