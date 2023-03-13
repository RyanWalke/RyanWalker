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
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.white,
            title: const Text(
              'Facebook',
              style: TextStyle(
                color: Colors.blue,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
                letterSpacing: -1.2,
              ),
            ),
            actions: [
              Container(
                margin: const EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                  icon: const Icon(Icons.search),
                  iconSize: 25.0,
                  color: Colors.black,
                  onPressed: () {},
                ),
              ),
              Container(
                margin: const EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                  icon: const Icon(Icons.chat_bubble_outline_outlined),
                  iconSize: 25.0,
                  color: Colors.black,
                  onPressed: () {},
                ),
              ),
            ],
          ),
          SliverToBoxAdapter(
            child: MiWidget(),
          ),
          SliverPadding(
            padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.5),
            sliver: SliverToBoxAdapter(
              child: Rooms(/*onlineUsers: onlineUsers*/),
            ),
          ),
        ],
      ),
    );
  }
}
class MiWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(12.0, 8.0, 12.0, 0.0),
      color: Colors.white,
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 20.0,
                backgroundColor: Colors.grey[800],
                backgroundImage: const NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQoMy22m6BoHzKFiUSLnF7dF8b4nEvEZiWCTw&usqp=CAU'
                ),
              ),
              const SizedBox(width: 8.0),
              const Expanded(
                child: TextField(
                  decoration: InputDecoration.collapsed(
                    hintText: 'What\'s on your mind?',
                  ),
                ),
              ),
            ],
          ),
          const Divider(height: 10.0, thickness: 0.5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                icon: const Icon(
                  Icons.videocam,
                  color: Colors.red,
                ),
                onPressed: (){},
              ),
              const VerticalDivider(width: 8.0),
              IconButton(
                icon: const Icon(
                  Icons.photo_library,
                  color: Colors.green,
                ),
                onPressed: (){},
              ),
              const VerticalDivider(width: 8.0),
              IconButton(
                icon: const Icon(
                  Icons.video_call,
                  color: Colors.purpleAccent,
                ),
                onPressed: (){},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
class Rooms extends StatelessWidget {
  /*final List<User> onlineUsers;
  
  const Rooms({
    Key ?key,
    required this.onlineUsers,
  }) : super(key: key);*/
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      color: Colors.green,
    );
  }
}
