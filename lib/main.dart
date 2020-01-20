import 'package:flutter/material.dart';

import 'constants/constants.dart' show AppColors;
import 'home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: '开源中国',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Color(AppColors.APP_THEME),
        ),
        home: HomePage());
  }
}

