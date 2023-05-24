import 'package:flutter/material.dart';
import 'package:happy_house/pages/home/info/index.dart';
import 'package:happy_house/pages/home/tab_index/index_navigator.dart';
import 'package:happy_house/pages/home/tab_index/index_navigator_item.dart';
import 'package:happy_house/widget/common_swiper.dart';
import 'package:happy_house/widget/search_bar/index.dart';

import 'index_recommend.dart';

class TabIndex extends StatelessWidget {
  const TabIndex({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SearchBarTheme(
            data: SearchBarThemeData(
              backgroundColor: MaterialStateProperty.resolveWith((states) =>
              states.contains(MaterialState.pressed) ? Colors.red : Colors
                  .blue),
            ),
            child: const Text("测试")
        ),
        backgroundColor: Colors.white,
      ),
      body: ListView(
        children: const [
          CommonSwiper(),
          IndexNavigator(),
          IndexRecomment(),
          Info(),
          // IndexNavigatorItem(title, imageUrl, onTap)
          // Text("这里是内容区"),
        ],
      ),
    );
  }
}
