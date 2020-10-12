import 'package:flutter/material.dart';
import 'package:flutter_app/pages/home.dart';
import 'package:flutter_app/pages/category.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter_app/pages/note.dart';
import 'package:flutter_app/pages/library.dart';

void main() => runApp(MaterialApp(
  home: MainPage(),
));

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _pageIndex = 0;
  GlobalKey _bottomNavigationKey = GlobalKey();

  List pages = [
    MyRoute(
      iconData: Icons.home,
      page: Home(),
    ),
    MyRoute(
      iconData: Icons.category,
      page: Category(),
    ),
    MyRoute(
      iconData: Icons.library_books,
      page: Note(),
    ),
    MyRoute(
      iconData: Icons.video_library,
      page: Library(),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange[800],
        title: Text('EduTube'),
        centerTitle: true,
      ),
      body: pages[_pageIndex].page,

      bottomNavigationBar: CurvedNavigationBar(
          key: _bottomNavigationKey,
          color: Colors.orange[800],
          buttonBackgroundColor: Colors.orange[800],
          backgroundColor: Colors.white,
          height: 65,
          items: pages.map((p) => Icon(
            p.iconData,
            size: 30,
            color: Colors.amberAccent,
          )).toList(),

          animationDuration: Duration(milliseconds: 250) ,
          onTap: (index) {
            setState(() {
              _pageIndex = index;
            });
          }
      ),
    );
  }
}

class MyRoute {
  final IconData iconData;
  final Widget page;

  MyRoute({this.iconData, this.page});
}



