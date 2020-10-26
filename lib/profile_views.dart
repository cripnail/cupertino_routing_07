import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileView extends StatefulWidget {
  @override
  _ProfileViewState createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: Colors.orange[300],
      child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text('ProfileView'),
              RaisedButton(
                  child: Text('Go to default page'),
                  onPressed: () {
                    Navigator.of(context).push(
                        CupertinoPageRoute(
                            builder: (BuildContext context) {
                              ProfileViewDetail();
                            }
                        )
                    );
                  })
            ],
          )),
    );
  }
}

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
              Text('ProfileView detail'),
              RaisedButton(
                  child: Text('Go to nested page'),
                  onPressed: () {
                    Navigator.of(context).push(
                        CupertinoPageRoute(
                            builder: (BuildContext context) {
                              ProfileViewDetail();
                            }
                        )
                    );
                  })
            ],
          )),
    );
  }
}
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
              Text('ProfileView Nested'),
            ],
          )),
    );
  }
}
