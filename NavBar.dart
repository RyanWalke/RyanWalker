import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

const Color bgColor = Color(0xFF010101);
const Color unnav = Color(0xFF3d3d3f);
const Color nav = Color(0xFF066162);
const Color white = Color(0xFFFFFFFF);

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyWidget(),
    );
  }
}

class MyWidget extends StatefulWidget {
  @override
  State<MyWidget> createState() => _MyWidget();
}

class _MyWidget extends State<MyWidget> {
  
  int _selectedIndex = 0;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: bgColor,
        elevation: 0.0,
      ),
      bottomNavigationBar: getNavBar(),
    );
  }
  
  Widget getNavBar() {
    return BottomNavigationBar(
      onTap: (i) => setState(() => _selectedIndex = i),
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      currentIndex: _selectedIndex,
      selectedItemColor: nav,
      unselectedItemColor: white,
      backgroundColor: bgColor,
      elevation: 0.0,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.explore_outlined, size: 28),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.search, size: 28),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite_outlined, size: 28),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings_outlined, size: 28),
          label: '',
        ),
      ],
    );
  }
}
