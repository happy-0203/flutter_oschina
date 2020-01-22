import 'package:flutter/material.dart';

abstract class AppColors {
  //应用主题色
  static const APP_THEME = 0xff63ca6c;
}

abstract class MineConstants {
  static const List<String> TITLE_NAME = [
    '我的消息',
    '我的勋章',
    '阅读记录',
    '我的博客',
    '我的灰名单',
    '我的问答',
    '我的投递',
    '我的活动',
    '关注标签',
    '邀请好友'
  ];

  static const List<String> TITLE_ICONS = [
    'images/ic_my_message.png',
    'images/ic_my_badge.png',
    'images/ic_my_profile.png',
    'images/ic_my_blog.png',
    'images/ic_my_blacklist.png',
    'images/ic_my_question.png',
    'images/ic_my_publish.png',
    'images/ic_my_event.png',
    'images/ic_my_tags.png',
    'images/ic_my_recommend.png',
  ];

}
