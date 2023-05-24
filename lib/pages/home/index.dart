import 'package:flutter/material.dart';
import 'package:happy_house/pages/home/tab_info/index.dart';
import 'package:happy_house/pages/home/tab_profile/index.dart';
import 'package:happy_house/pages/home/tab_search/index.dart';
import 'package:happy_house/pages/home/tab_index/index.dart';
// import 'package:happy_house/widget/page_content.dart';

// tab内容区
List<Widget> tabViewList = [
  const TabIndex(),
  // PageContent(name: "搜索"),
  const IndexSearch(),
  // PageContent(name: "资讯"),
  const TabInfo(),
  const TabProfile(),
];

// bottomNavigatorItem

List<BottomNavigationBarItem> barItemList = [
  const BottomNavigationBarItem(label: '首页', icon: Icon(Icons.home)),
  const BottomNavigationBarItem(label: '搜索', icon: Icon(Icons.search)),
  const BottomNavigationBarItem(label: '资讯', icon: Icon(Icons.info)),
  const BottomNavigationBarItem(label: '我的', icon: Icon(Icons.account_circle)),
];

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabViewList[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: barItemList,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }
}
