import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

import 'package:flutter_app/codeEditor.dart';
import 'package:flutter_app/library.dart';
import 'package:flutter_app/home.dart';
import 'package:flutter_app/note.dart';


void main() => runApp(MaterialApp(
  home: MainPage(),
  debugShowCheckedModeBanner: false,
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
      iconData: Icons.code,
      page: CodeEditor(),
    ),
    MyRoute(
      iconData: Icons.library_books,
      page: Note(),
    ),
    MyRoute(
      iconData: Icons.video_library,
      page: VideoList(),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange[800],
        title: Text('ExamPrep'),
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
