# 乐居租房

### 项目简介

&emsp;&emsp;该项目是一个基于Flutter的移动端应用，主要提供租房信息查询和预订服务。该应用实现了用户登录、租房信息搜索、列表展示、详情展示、预订等功能，采用Provider进行状态管理。

### IDE

&emsp;&emsp;Android Studio Flamingo | 2022.2.1

### 开发环境

1.  flutter 3.10.1
2.  Dart 3.0.1

### 安装教程

1.  连接真机开启开发者选项和USB调试模式<img src="./images_md/image01.png" alt="UI" style="zoom:35%;" />
2.  flutter pub get

### 前端效果

<img src="./images_md/UI.png" alt="UI" style="zoom:25%;" />

### 目录结构

```shell
├─android
├─ios
├─lib                       UI源代码
│  ├─pages                  页面
│  │  ├─home                首页
│  │  │  ├─info             公告页
│  │  │  ├─room_add         添加房间页
│  │  │  ├─room_manager     房间管理页
│  │  │  ├─tab_index        主页标题栏
│  │  │  ├─tab_info         房屋信息页标题栏
│  │  │  ├─tab_profile      个人主页标题栏
│  │  │  └─tab_search       搜索栏
│  │  │      └─filter_bar   搜索页面的筛选栏
│  │  └─room_detail         房间详情页面
│  ├─scoped_model           状态管理
│  ├─utils                  工具类
│  │  └─common_picker       通用选择器
│  └─widget                 自定义组件
│      └─search_bar         搜索条
├─linux                     Linux平台支持
├─macos                     macOS平台支持
├─static                    静态资源
│  ├─fonts                  字体文件
│  ├─icons                  图标文件
│  └─images                 图片素材
├─test                      测试文件
├─web                       Web平台支持
└─windows                   Windows平台支持
```

