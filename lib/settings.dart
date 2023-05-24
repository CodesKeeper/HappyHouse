import 'package:flutter/material.dart';
import 'package:happy_house/utils/common_toast.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  bool _isDarkMode = false;
  double _fontSize = 16.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("设置"),
      ),
      body: ListView(
        children: [
          SwitchListTile(
              title: const Text("夜间模式"),
              value: _isDarkMode,
              onChanged: (value) {
                setState(() {
                  _isDarkMode = value;
                });
              }),
          ListTile(
            title: const Text("字体大小"),
            trailing: DropdownButton(
              value: _fontSize,
              onChanged: (value) {
                setState(() {
                  _fontSize = value!;
                });
              },
              items: const [
                DropdownMenuItem<double>(
                  value: 12.0,
                  child: Text('小'),
                ),
                DropdownMenuItem<double>(
                  value: 14.0,
                  child: Text('标准'),
                ),
                DropdownMenuItem<double>(
                  value: 16.0,
                  child: Text('中'),
                ),
                DropdownMenuItem<double>(
                  value: 20.0,
                  child: Text('大'),
                ),
              ],
            ),
          ),
          const Divider(),
          ListTile(
            title: const Text('帮助与反馈'),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              // 跳转到帮助与反馈页面
            },
          ),
          ListTile(
            title: const Text('关于我们'),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              // 跳转到关于我们页面
            },
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: ElevatedButton(
              onPressed: () {
                CommonToast.showToast('已经退出登录');
              },
              child: const Text(
                "退出登录",
                style: TextStyle(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
