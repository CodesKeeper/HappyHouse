import 'package:flutter/material.dart';
import 'package:happy_house/pages/home/info/index.dart';
import 'package:happy_house/widget/search_bar/index.dart';

class TabInfo extends StatefulWidget {
  const TabInfo({Key? key}) : super(key: key);

  @override
  _TabInfoState createState() => _TabInfoState();
}

class _TabInfoState extends State<TabInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SearchBar(
          onTap: () {
            Navigator.of(context).pushNamed('search');
          },
        ),
        backgroundColor: Colors.white,
      ),
      body: ListView(
        children: const [
          Padding(padding: EdgeInsets.only(top: 8)),
          Info(),
        ],
      ),
    );
  }
}
