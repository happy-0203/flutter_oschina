import 'package:flutter/material.dart';
import 'package:flutter_oschina/constants/constants.dart' show MineConstants;

class MineItemPage extends StatefulWidget {
  final int index;

  MineItemPage({Key key, this.index}) : super(key: key);

  @override
  _MineItemPageState createState() => _MineItemPageState();
}

class _MineItemPageState extends State<MineItemPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        title: Text(MineConstants.TITLE_NAME[widget.index]),
        leading: Image.asset(MineConstants.TITLE_ICONS[widget.index],width: 28.0,height: 28.0,),
        trailing: Icon(Icons.arrow_forward_ios),
      ),
    );
  }
}
