import 'package:flutter/material.dart';
import 'package:happy_house/pages/home/tab_search/data_list.dart';
import 'package:happy_house/widget/common_floating_button.dart';
import 'package:happy_house/widget/room_list_item_widget.dart';

class RoomManagerPage extends StatelessWidget {
  const RoomManagerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: CommonFloatingActionButton(
          onTap: () {
            Navigator.of(context).pushNamed('roomAdd');
          },
          title: '发布房源',
        ),
        appBar: AppBar(
          title: const Text('房屋管理'),
          bottom: const TabBar(
            tabs: [
              Tab(
                text: '空置',
              ),
              Tab(
                text: '已租',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ListView(
                children: dataList
                    .map((item) => RoomListItemWidget(
                          data: item,
                        ))
                    .toList()),
            ListView(
                children: dataList
                    .map((item) => RoomListItemWidget(
                          data: item,
                        ))
                    .toList()),
          ],
        ),
      ),
    );
  }
}
