import 'package:flutter/material.dart';

var textStyle = const TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.w600,
  color: Colors.black,
);

class TabProfileHeader extends StatelessWidget {
  const TabProfileHeader({Key? key}) : super(key: key);

  Widget _notLoginBuilder(BuildContext context) {
    return Container(
      color: Colors.teal,
      padding: const EdgeInsets.all(16),
      height: 110,
      child: Row(
        children: [
          Container(
            height: 100,
            width: 100,
            child: const CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://tva1.sinaimg.cn/large/008i3skNgy1gsuh24kjbnj30do0duaad.jpg'),
            ),
          ),
          const SizedBox(width: 30),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed('login');
                    },
                    child: Text('登录', style: textStyle),
                  ),
                  Text('  /  ', style: textStyle),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed('register');
                    },
                    child: Text('注册', style: textStyle),
                  ),
                ],
              ),
              const Text(
                '登录后可以体验更多',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _loginBuilder(BuildContext context) {
    String userImage =
        'https://pic.616pic.com/ys_bnew_img/00/02/75/kcZFQ0e42t.jpg';
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(16),
      height: 110,
      child: Row(
        children: [
          Container(
            height: 100,
            width: 100,
            child: CircleAvatar(
              backgroundImage: NetworkImage(userImage),
            ),
          ),
          const SizedBox(width: 30),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Text(
                        '登录',
                        style: textStyle,
                      ),
                      Text(
                        "/",
                        style: textStyle,
                      ),
                      Text(
                        "注册",
                        style: textStyle,
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 10),
              // const Text(
              //   '查看编辑个人资料',
              //   style: TextStyle(fontSize: 16, color: Colors.black),
              // ),
              Row(
                children: [
                  SizedBox(
                    width: 70,
                    height: 25,
                    child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        "隐私保护",
                        style: TextStyle(fontSize: 10),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 70,
                    height: 30,
                    child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        "专属客服",
                        style: TextStyle(fontSize: 10),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var isLogin = true;
    return isLogin ? _loginBuilder(context) : _notLoginBuilder(context);
  }
}
