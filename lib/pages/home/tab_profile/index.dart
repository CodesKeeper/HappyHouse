import 'package:flutter/material.dart';
import 'package:happy_house/pages/home/info/index.dart';
import 'package:happy_house/pages/home/tab_profile/function_button.dart';
import 'package:happy_house/pages/home/tab_profile/header.dart';

import 'advertisement.dart';

class TabProfile extends StatelessWidget {
  const TabProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed('setting');
            },
            icon: const Icon(Icons.settings),
          ),
        ],
        title: const Text(
          '我的',
          // style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.blue,
      ),
      body: ListView(
        children: const [
          TabProfileHeader(),
          FunctionButton(),
          // Advertisement(),
          SizedBox(
            height: 30,
          ),
          Info(
            showTitle: true,
          ),
        ],
      ),
    );
  }
}
