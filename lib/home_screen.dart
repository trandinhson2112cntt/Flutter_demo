import 'package:flutter/material.dart';
import 'package:flutter_demo/navigation.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeScreen();
  }
}
enum TabItem { Project, Issue, Notification, Account }
class _HomeScreen extends State<HomeScreen> {

  TabItem currentTab = TabItem.Project;

  Map<TabItem, GlobalKey<NavigatorState>> navigatorKeys = {
    TabItem.Project: GlobalKey<NavigatorState>(),
    TabItem.Issue: GlobalKey<NavigatorState>(),
    TabItem.Notification: GlobalKey<NavigatorState>(),
    TabItem.Account: GlobalKey<NavigatorState>(),
  };

  void _selectTab(TabItem tabItem) {
    setState(() {
      currentTab = tabItem;
    });
  }

  final navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: <Widget>[
        _buildOffstageProjectNavigator(TabItem.Project),
        _buildOffstageIssueNavigator(TabItem.Issue),
        _buildOffstageNotificationNavigator(TabItem.Notification),
        _buildOffstageAccountNavigator(TabItem.Account),
      ]),
      bottomNavigationBar: BottomNavigation(
        currentTab: currentTab,
        onSelectTab: _selectTab,
      ),
    );
  }

  Widget _buildOffstageProjectNavigator(TabItem tabItem) {
    return Offstage(
      offstage: currentTab != tabItem,
      child:
      TabNavigator(
        navigatorKey: navigatorKeys[tabItem],
        tabItem: tabItem,
      ),
    );
  }

  Widget _buildOffstageIssueNavigator(TabItem tabItem) {
    return Offstage(
      offstage: currentTab != tabItem,
      child:
      IssueTabNavigator(
        navigatorKey: navigatorKeys[tabItem],
        tabItem: tabItem,
      ),
    );
  }

  Widget _buildOffstageNotificationNavigator(TabItem tabItem) {
    return Offstage(
      offstage: currentTab != tabItem,
      child:
      NotificationTabNavigator(
        navigatorKey: navigatorKeys[tabItem],
        tabItem: tabItem,
      ),
    );
  }

  Widget _buildOffstageAccountNavigator(TabItem tabItem) {
    return Offstage(
      offstage: currentTab != tabItem,
      child:
      AccountTabNavigator(
        navigatorKey: navigatorKeys[tabItem],
        tabItem: tabItem,
      ),
    );
  }
}

class TabHelper {
  static TabItem item({int index}) {
    switch (index) {
      case 0:
        return TabItem.Project;
      case 1:
        return TabItem.Issue;
      case 2:
        return TabItem.Notification;
      case 3:
        return TabItem.Account;
    }
    return TabItem.Project;
  }

  static String description(TabItem tabItem) {
    switch (tabItem) {
      case TabItem.Project:
        return 'Dự án';
      case TabItem.Issue:
        return 'Vấn đề';
      case TabItem.Notification:
        return 'Thông báo';
      case TabItem.Account:
        return 'Tài khoản';
    }
    return '';
  }

  static IconData icon(TabItem tabItem) {
    switch (tabItem) {
      case TabItem.Project:
        return Icons.folder_open;
      case TabItem.Issue:
        return Icons.sync_problem;
      case TabItem.Notification:
        return Icons.notifications_none;
      case TabItem.Account:
        return Icons.person_outline;
    }
    return Icons.folder_open;
  }

  static Color color(TabItem tabItem) {
//    switch (tabItem) {
//      case TabItem.Project:
//        return Color.fromRGBO(0, 82, 204, 1);
//      case TabItem.Issue:
//        return Color.fromRGBO(0, 82, 204, 1);
//      case TabItem.Notification:
//        return Color.fromRGBO(0, 82, 204, 1);
//      case TabItem.Account:
//        return Color.fromRGBO(0, 82, 204, 1);
//    }
    return Color.fromRGBO(0, 82, 204, 1);
  }
}

class BottomNavigation extends StatelessWidget {
  BottomNavigation({this.currentTab, this.onSelectTab});
  final TabItem currentTab;
  final ValueChanged<TabItem> onSelectTab;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: [
        _buildItem(tabItem: TabItem.Project),
        _buildItem(tabItem: TabItem.Issue),
        _buildItem(tabItem: TabItem.Notification),
        _buildItem(tabItem: TabItem.Account),
      ],
      onTap: (index) => onSelectTab(
        TabHelper.item(index: index),
      ),
    );
  }

  BottomNavigationBarItem _buildItem({TabItem tabItem}) {

    String text = TabHelper.description(tabItem);
    IconData icon = TabHelper.icon(tabItem);
    return BottomNavigationBarItem(
      icon: Icon(
        icon,
        color: _colorTabMatching(item: tabItem),
      ),
      title: Text(
        text,
        style: TextStyle(
          color: _colorTabMatching(item: tabItem),
        ),
      ),
    );
  }

  Color _colorTabMatching({TabItem item}) {
    return currentTab == item ? TabHelper.color(item) : Colors.grey;
  }
}