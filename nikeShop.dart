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

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Image.network(
                  'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAPgAAADLCAMAAAB04a46AAAAe1BMVEX///8AAADf39/T09N8fHzw8PDPz8/7+/v4+Pjz8/O8vLyamprk5OS5ubkMDAylpaXq6upPT09kZGRYWFhvb2+Dg4OpqanJycmPj490dHTZ2dlAQECzs7NpaWklJSWioqIfHx80NDQVFRU6OjotLS2WlpZERESBgYESEhKLqKDUAAAECUlEQVR4nO3c63qiMBAG4AYRD2DF9YTWarXa9f6vcD2UipCEAJkkdL/3f5PMIzCTSZ6+vAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAOGxgewFWROOFZ3sN5i397Ty2vQjTvN2EsYXtVRg2GPqMscnS9jrM6pw+L1EzP9I1YKBrIELx5s81aPYa9rWNuVtrG4pGfznf3qJmbyONwy6nGgfT7/Ypu/vT0TlwzNz9wbuj2TmNmmlOX73zXut4+gTJ50/Q7GPR0zz8xMmMGC2mLIMgfc0Z0/eV1OOeqjNWBJXpkDG3Pm3r09dz1DrT10N0GXlDMG49aarO0Jq+Mq7Z0Y1S/5Kqj/moNaevjNn1USIauwovnBSCZiwh+0k21+FnVKMruqTqV07UW+3p6yG+zTAmG1/BMtlzgqbefd3fKWsbPG835Qatc/fFNb/PYuXb1h2tBEGz1x1xXdH5nsh4+dILBM/31deQfP7D91TkEz3xxqLn+2pmYLuUVoUH+qlS3eHqIImaJV0DiwjS2Y4GJrtNmLzJgmb7DV36ytqaDDy31eKYmmp+JT9Tbolnumy1pM/31Zw2fWVEj0lJK9anVoLAYWzmGb/JVsZUc8i/3ymzDfJhdmqKT6mkPnlC0WGQedoU6E6dfVH9nXcOTZ91hk/za+1DZFrBJag6DBL93OOma9x4w91fcr3b6GjPc4vQMSa3fyJE12GQ6eaX0bh26OT7g1JHWz0+P7+SRl1Wb1HoD0oZK9EKCj84Y3U7erFi0nqweYch/4azeuX64Of8UtnWZIlW0Octya82Rq/aS31n+w7DmLuqk/oA4k6ZjOkSrUiQdBKlP44qfsm+mS/RigLR4iZlJXu8kbdPhN7ou2gKZuIF7sR/1R35H7WCNtNFU9CTLvLESzZx/aAvb5D9Z/xuWLLQt7CT7TZ7m5Vy9V306c4x7Mu7wnoPUz8Jd2HiV09ZWWQHnbU0CqUKO9sQoU75inU4Eh501hOWL7q5qYPXTGuVH9X8NdYproI6aqOd4go4O1KdbG9DxNaUYfvWtyFiZeVLfQfqw/xmNkRhT5zYhkjw9+JNrdzYhsjsCMIOTRzmN7XQHbWF05BaRnrDdmSrrUBrqX5yZautQF8B49JWW8W5PCQV705ttVUUTo/qMHIpS7Nl46jb9oynGobtVjupikadCMfaSZVwT86U7Fv6jKdqVq3t+44XlF+4K2rjd7wgrhp1W+rxUsJjQ6721OPl1JP5oRV7TnWe2nmY832VGhTu7Ji7SW3UWn6dY/ULf+xUlPDvN3zMfv9/0/EWs2xW3078cdCi7kJDg2gdBME6+n8iBgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAPhd/gFHyi8u+kmPywAAAABJRU5ErkJggg',
                  height: 240,
                ),
              ),
              const SizedBox(height: 48.0),
              const Text(
                'Just Do It',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
              ),
              const SizedBox(height: 24.0),
              const Text(
                'Brand new sneakers and customs kiks made with premium quality',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.grey,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 48.0),
              GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomePage(),
                  ),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[900],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: const EdgeInsets.all(25),
                  child: const Center(
                    child: Text(
                      'Shop Now',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePage();
}
class _HomePage extends State<HomePage> {
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
      backgroundColor: Colors.grey[300],
      body: _children[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigateBottomNavBar,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        unselectedItemColor: Colors.grey[700],
        selectedItemColor: Colors.black,
        elevation: 0.0,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'search'),
          BottomNavigationBarItem(icon: Icon(Icons.video_call), label: 'reels'),
          BottomNavigationBarItem(icon: Icon(Icons.shop), label: 'shop'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'account'),
        ],
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Icon(
              Icons.menu,
              color: Colors.black,
            ),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.black,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                DrawerHeader(
                  child: Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTktE3dcDf878qwjZ-pZqtsJAa1jIbVwkySSg&usqp=CAU',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Divider(
                    color: Colors.grey[700],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 25.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.home,
                      color: Colors.white,
                    ),
                    title: Text(
                      'Home',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 25.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.info,
                      color: Colors.white,
                    ),
                    title: Text(
                      'About',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 25.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.logout,
                      color: Colors.white,
                    ),
                    title: Text(
                      'Logout',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
class UserHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(12.0),
          margin: const EdgeInsets.symmetric(horizontal: 25.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text('Search'),
              Icon(Icons.search),
            ],
          ),
        ),
      ],
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
