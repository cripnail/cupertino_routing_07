import 'package:cupertino_routing_tutorial_07/home_views.dart';
import 'package:cupertino_routing_tutorial_07/nav.dart';
import 'package:cupertino_routing_tutorial_07/profile_views.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: 'Flutter Navigation',
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _routeIndex = 0;

  List<GlobalKey<NavigatorState>> navigationKeys;

  List<GlobalKey<NavigatorState>> generateNavigatorKey() {
    List<GlobalKey<NavigatorState>> navKeys = navs.map((navItem) {
      return GlobalKey<NavigatorState>();
    }).toList();
    return navKeys;
  }

  @override
  void initState() {
    super.initState();
    navigationKeys = generateNavigatorKey();
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        currentIndex: _routeIndex,
        onTap: (int index) {
          if (_routeIndex == index) {
            if (navigationKeys[index].currentState.canPop()) {
              navigationKeys[index].currentState.pop();
            }
          }
          _routeIndex = index;
        },
        items: navs
            .map(
              (item) => BottomNavigationBarItem(
                icon: Icon(item.icon),
                title: Text(item.title),
              ),
            )
            .toList(),
      ),
      tabBuilder: (BuildContext context, int index) {
        return CupertinoTabView(
            navigatorKey: navigationKeys[index],
            builder: (BuildContext context) {
              switch (index) {
                case 0:
                  return HomeViewPage();
                  break;
                case 1:
                  return ProfileView();
                default:
              }
            });
        return HomeViewPage();
      },
    );
  }
}
