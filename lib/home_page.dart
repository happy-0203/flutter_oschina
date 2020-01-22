import 'package:flutter/material.dart';
import 'package:flutter_oschina/widgets/navigation_icon_view.dart';
import 'package:flutter_oschina/pages/my_drawer.dart';
import 'package:flutter_oschina/pages/mine_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static const List<String> _appBarTitle = ['资讯', '动弹', '发现', '我的'];

  int _currentIndex = 0;
  List<NavigationIconView> _navigationIconViews;

  List<Widget> _pages;

  PageController _pageController;

  @override
  void initState() {
    super.initState();

    _navigationIconViews = [
      NavigationIconView(
          title: '资讯',
          iconPath: 'images/ic_nav_news_normal.png',
          activeIconPath: 'images/ic_nav_news_actived.png'),
      NavigationIconView(
          title: '动弹',
          iconPath: 'images/ic_nav_tweet_normal.png',
          activeIconPath: 'images/ic_nav_tweet_actived.png'),
      NavigationIconView(
          title: '发现',
          iconPath: 'images/ic_nav_discover_normal.png',
          activeIconPath: 'images/ic_nav_discover_actived.png'),
      NavigationIconView(
          title: '我的',
          iconPath: 'images/ic_nav_my_normal.png',
          activeIconPath: 'images/ic_nav_my_pressed.png'),
    ];

    _pages = [
      Container(
        color: Colors.red,
      ),
      Container(
        color: Colors.pink,
      ),
      Container(
        color: Colors.yellow,
      ),
      MinePage(),
    ];

    _pageController = PageController(initialPage: _currentIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      appBar: AppBar(
//        elevation: 0.0,
//        iconTheme: IconThemeData(color: Colors.white),
//        title: Text(
//          _appBarTitle[_currentIndex],
//          style: TextStyle(color: Colors.white),
//        ),
//      ),
      body: Container(
        //padding: EdgeInsets.all(0.0),
        child: PageView.builder(
          itemBuilder: (BuildContext context, int index) {
            return _pages[index];
          },
          physics: NeverScrollableScrollPhysics(),
          //禁止滑动
          controller: _pageController,
          itemCount: _pages.length,
          onPageChanged: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: _navigationIconViews.map((view) => view.item).toList(),
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
          //点击滑动
          _pageController.animateToPage(index,
              duration: Duration(milliseconds: 1), curve: Curves.linear);
        },
      ),
      drawer: MyDrawer(
        headerPath: 'images/cover_img.jpg',
        menuTitles: ['发布动弹', '动弹小黑屋', '关于', '设置'],
        menuIcons: [Icons.send, Icons.home, Icons.error, Icons.settings],
      ),
    );
  }
}
