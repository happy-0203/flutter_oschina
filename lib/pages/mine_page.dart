import 'package:flutter/material.dart';
import 'package:flutter_oschina/constants/constants.dart' show MineConstants;
import 'package:flutter_oschina/widgets/mine_page_header_widget.dart';
import 'package:flutter_oschina/widgets/mine_page_item.dart';

class MinePage extends StatefulWidget {
  @override
  _MinePageState createState() => _MinePageState();
}

class _MinePageState extends State<MinePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.separated(
          padding: EdgeInsets.all(0.0),
          itemBuilder: (BuildContext context, int index) {
            if (index == 0) {
              return MineHeaderPage(title: '点击登录');
            }
            index -= 1;
            return MineItemPage(
              index: index,
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            if(index == 0){
              return Divider(height: 0.0,);
            }
            return Divider();
          },
          itemCount: MineConstants.TITLE_ICONS.length),
    );
  }
}
