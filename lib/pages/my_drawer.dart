import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  final String headerPath;
  final List<String> menuTitles;
  final List<IconData> menuIcons;

  MyDrawer({Key key, this.headerPath, this.menuTitles, this.menuIcons})
      : assert(headerPath != null),
        assert(menuTitles != null),
        assert(menuIcons != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView.separated(
        padding: EdgeInsets.all(0.0),
          itemBuilder: (BuildContext context, int index) {
            if (index == 0) {
              return Image.asset(
                headerPath,
              );
            }
            index -= 1;
            return ListTile(
              leading: Icon(menuIcons[index]),
              trailing: Icon(Icons.arrow_forward_ios),
              title: Text(menuTitles[index]),
              onTap: (){
                //TODO 点击跳转
              },
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            if (index == 0) {
              return Divider(height: 0.0);
            } else {
              return Divider(height: 1.0);
            }
          },
          itemCount: menuTitles.length + 1)
    );
  }
}
