import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:happy_house/pages/home/index.dart';
import 'package:happy_house/pages/home/room_add/index.dart';
import 'package:happy_house/pages/home/room_manager/index.dart';
import 'package:happy_house/pages/login.dart';
import 'package:happy_house/pages/register.dart';
import 'package:happy_house/pages/room_detail/index.dart';
import 'package:happy_house/settings.dart';

import 'pages/not_found.dart';

class Routes {
  // 定义路由名称
  static String home = '/';
  static String login = '/login';
  static String register = '/register';
  static String setting = '/setting';
  static String roomManage = '/roomManage';
  static String roomAdd = '/roomAdd';
  static String roomDetail = '/roomDetail/:roomId';

  // 定义路由处理函数

  // var rootHandler = Handler(
  //     handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
  //   return HomePage();
  // });
  static final Handler _homeHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
    return const HomePage();
  });

  static final Handler _loginHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
    return const LoginPage();
  });

  static final Handler _registerHanlder = Handler(
      handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
    return const RegisterPage();
  });

  static final Handler _settingHanlder = Handler(
      handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
    return const SettingPage();
  });

  static final Handler _roomManageHanlder = Handler(
      handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
    return const RoomManagerPage();
  });

  static final Handler _roomAddHanlder = Handler(
      handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
    return const RoomAddPage();
  });

  static final Handler _notFoundHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
    return const NotFoundPage();
  });

  static final Handler _roomDetailHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
    return RoomDetailPage(
      roomId: params['roomId']![0],
    );
  });

  // 编写路由处理函数
  static void configureRoutes(FluroRouter router) {
    // router.notFoundHandler = Handler(
    //     handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
    //   print("ROUTE WAS NOT FOUND !!!");
    //   return;
    // });

    router.define(home, handler: _homeHandler);
    router.define(login, handler: _loginHandler);
    router.define(register, handler: _registerHanlder);
    router.define(setting, handler: _settingHanlder);
    router.define(roomManage, handler: _roomManageHanlder);
    router.define(roomAdd, handler: _roomAddHanlder);
    router.define(roomDetail, handler: _roomDetailHandler);
    router.notFoundHandler = _notFoundHandler;

    // router.define(root, handler: rootHandler);
    // router.define(demoSimple, handler: demoRouteHandler);
    // router.define(demoSimpleFixedTrans,
    //     handler: demoRouteHandler, transitionType: TransitionType.inFromLeft);
    // router.define(demoFunc, handler: demoFunctionHandler);
    // router.define(deepLink, handler: deepLinkHandler);
  }
}
