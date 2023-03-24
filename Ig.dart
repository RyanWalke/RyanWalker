import 'package:flutter/material.dart';

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
  void _navigateBottomNavBar(int index){
    setState((){
      _selectedIndex = index;
    });
  }
  
  final List<Widget> _children = [
    UserHome(),
    UserSearch(),
    UserReels(),
    UserShop(),
    UserAccount(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigateBottomNavBar,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'search'),
          BottomNavigationBarItem(icon: Icon(Icons.video_call), label: 'reels'),
          BottomNavigationBarItem(icon: Icon(Icons.shop), label: 'shop'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'account'),
        ],
      ),
    );
  }
}
class UserHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              'Instagram',
              style: TextStyle(
                color: Colors.black,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.add, color: Colors.black),
            onPressed: (){},
          ),
          IconButton(
            icon: const Icon(Icons.favorite, color: Colors.black),
            onPressed: (){},
          ),
          IconButton(
            icon: const Icon(Icons.share, color: Colors.black),
            onPressed: (){},
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 130,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                Stories(text: 'Leo Messi'),
                Stories(text: 'Leo Messi'),
                Stories(text: 'Leo Messi'),
                Stories(text: 'Leo Messi'),
                Stories(text: 'Leo Messi'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
class Stories extends StatelessWidget {
  final String text;
  
  const Stories({required this.text});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey[400],
            ),
          ),
          const SizedBox(height: 10),
          Text(text),
        ],
      ),
    );
  }
}
class UserSearch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
class UserReels extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
class UserShop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
class UserAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
