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
│  ├─.gradle
│  │  ├─7.5
│  │  │  ├─checksums
│  │  │  ├─dependencies-accessors
│  │  │  ├─executionHistory
│  │  │  ├─fileChanges
│  │  │  ├─fileHashes
│  │  │  └─vcsMetadata
│  │  ├─buildOutputCleanup
│  │  └─vcs-1
│  ├─app
│  │  └─src
│  │      ├─debug
│  │      ├─main
│  │      │  ├─java
│  │      │  │  └─io
│  │      │  │      └─flutter
│  │      │  │          └─plugins
│  │      │  ├─kotlin
│  │      │  │  └─com
│  │      │  │      └─example
│  │      │  │          └─happy_house
│  │      │  └─res
│  │      │      ├─drawable
│  │      │      ├─drawable-v21
│  │      │      ├─mipmap-hdpi
│  │      │      ├─mipmap-mdpi
│  │      │      ├─mipmap-xhdpi
│  │      │      ├─mipmap-xxhdpi
│  │      │      ├─mipmap-xxxhdpi
│  │      │      ├─values
│  │      │      └─values-night
│  │      └─profile
│  └─gradle
│      └─wrapper
├─ios
│  ├─Flutter
│  ├─Runner
│  │  ├─Assets.xcassets
│  │  │  ├─AppIcon.appiconset
│  │  │  └─LaunchImage.imageset
│  │  └─Base.lproj
│  ├─Runner.xcodeproj
│  │  ├─project.xcworkspace
│  │  │  └─xcshareddata
│  │  └─xcshareddata
│  │      └─xcschemes
│  └─Runner.xcworkspace
│      └─xcshareddata
├─lib
│  ├─pages
│  │  ├─home
│  │  │  ├─info
│  │  │  ├─room_add
│  │  │  ├─room_manager
│  │  │  ├─tab_index
│  │  │  ├─tab_info
│  │  │  ├─tab_profile
│  │  │  └─tab_search
│  │  │      └─filter_bar
│  │  └─room_detail
│  ├─scoped_model
│  ├─utils
│  │  └─common_picker
│  └─widget
│      └─search_bar
├─linux
│  └─flutter
│      └─ephemeral
│          └─.plugin_symlinks
├─macos
│  ├─Flutter
│  │  └─ephemeral
│  ├─Runner
│  │  ├─Assets.xcassets
│  │  │  └─AppIcon.appiconset
│  │  ├─Base.lproj
│  │  └─Configs
│  ├─Runner.xcodeproj
│  │  ├─project.xcworkspace
│  │  │  └─xcshareddata
│  │  └─xcshareddata
│  │      └─xcschemes
│  └─Runner.xcworkspace
│      └─xcshareddata
├─static
│  ├─fonts
│  ├─icons
│  └─images
├─test
├─web
│  └─icons
└─windows
    ├─flutter
    │  └─ephemeral
    │      └─.plugin_symlinks
    └─runner
        └─resources
```

