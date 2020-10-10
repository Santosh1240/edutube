import 'package:flutter/material.dart';

void main() {
  runApp(Home());
}
class Home extends StatelessWidget {
  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

/// This is the stateful widget that the main application instantiates.
class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: TextStyle(
        color:Colors.blue,
      ),
    ),
    Text(
      'Index 1: Categories',
      style: TextStyle(
        color:Colors.blue,
      ),
    ),
    Text(
      'Index 2: Notes',
      style: TextStyle(
        color:Colors.blue,
      ),
    ),
    Text(
      'Index 3: Courses',
      style: TextStyle(
        color:Colors.blue,
      ),
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BottomNavigationBar Sample'),
      ),
      body: Center(
       child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home,
              color:Colors.blue,),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category,
              color:Colors.blue,),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book,
            color:Colors.blue),
            label: 'Notes',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_books,
              color:Colors.blue,),
            label: 'Courses',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue[800],
        onTap: _onItemTapped,
      ),
    );
  }
}



