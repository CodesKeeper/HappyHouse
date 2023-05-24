import 'package:flutter/material.dart';
import 'package:happy_house/pages/home/tab_search/data_list.dart';
import 'package:happy_house/pages/home/tab_search/filter_bar/filter_drawer.dart';
import 'package:happy_house/widget/room_list_item_widget.dart';
// import 'package:happy_house/widget/search_bar/index.dart';

import 'filter_bar/index.dart';

class IndexSearch extends StatefulWidget {
  const IndexSearch({Key? key}) : super(key: key);

  @override
  _IndexSearchState createState() => _IndexSearchState();
}

class _IndexSearchState extends State<IndexSearch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: const FilterDrawer(),
      appBar: AppBar(
        title: SearchBar(
          // showLocation: true,
          onTap: () {
            Navigator.of(context).pushNamed('search');
          },
        ),
        // title: SearchBarTheme(
        //     data: SearchBarThemeData(
        //       backgroundColor: MaterialStateProperty.resolveWith((states) =>
        //       states.contains(MaterialState.pressed) ? Colors.red : Colors
        //           .blue),
        //     ),
        //     child: const Text("测试")
        // ),
        // title: SearchBar(
        //
        // ),
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Container(
            height: 41.0,
            child: FilterBar(
              onChange: (data) {},
            ),
          ),
          Expanded(
            child: ListView(
              children: dataList
                  .map((item) => RoomListItemWidget(
                        data: item,
                      ))
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
