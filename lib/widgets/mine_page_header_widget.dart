import 'package:flutter/material.dart';
import 'package:flutter_oschina/constants/constants.dart' show AppColors;

class MineHeaderPage extends StatefulWidget {
  final String title;

  const MineHeaderPage({Key key, this.title}) : super(key: key);

  @override
  _MineHeaderPageState createState() => _MineHeaderPageState(title: title);
}

class _MineHeaderPageState extends State<MineHeaderPage> {
  final String title;

  _MineHeaderPageState({Key key, @required this.title}) : assert(title != null);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      color: Color(AppColors.APP_THEME),
      child: Center(
        child: GestureDetector(
          onTap: (){
            //TODO 点击登录
            print('点击登录');
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 20.0,
              ),
              Image.asset(
                'images/ic_avatar_default.png',
                width: 60.0,
                height: 60.0,
              ),
              SizedBox(
                height: 2.0,
              ),
              Text(
                '$title',
                style: TextStyle(color: Colors.white, fontSize: 14.0),
              )
            ],
          ),
        ),
      ),
    );
  }
}
