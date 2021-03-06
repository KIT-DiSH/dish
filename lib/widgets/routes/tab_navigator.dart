import 'package:flutter/material.dart';

import 'package:dish/screens/map_screen.dart';
import 'package:dish/screens/post_screen.dart';
import 'package:dish/screens/profile_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:dish/screens/timeline_screen.dart';
import 'package:dish/screens/search_screen.dart';

class TabNavigator extends StatelessWidget {
  TabNavigator({
    required this.openFooter,
    required this.closeFooter,
    required this.popUntilFirstScreen,
    required this.navigatorKey,
    required this.tabItem,
  });

  final VoidCallback openFooter;
  final VoidCallback closeFooter;
  final VoidCallback popUntilFirstScreen;
  final GlobalKey<NavigatorState> navigatorKey;
  final String tabItem;

  @override
  Widget build(BuildContext context) {
    String uid = FirebaseAuth.instance.currentUser!.uid;
    Widget child;

    switch (tabItem) {
      case "Home":
        child = Timeline(
          openFooter: openFooter,
          closeFooter: closeFooter,
        );
        break;
      case "Search":
        child = SearchScreen(
          openFooter: openFooter,
          closeFooter: closeFooter,
        );
        break;
      // case "NewPost":
      //   child = PostScreen();
      //   break;
      // case "Map":
      //   child = MapScreen();
      //   break;
      case "Profile":
        child = ProfileScreen(
          uid: uid,
          popUntilFirstScreen: popUntilFirstScreen,
          openFooter: openFooter,
          closeFooter: closeFooter,
        );
        break;
      default:
        child = Container();
    }

    return Navigator(
      key: navigatorKey,
      onGenerateRoute: (routeSettings) {
        return MaterialPageRoute(builder: (_) => child);
      },
    );
  }
}
