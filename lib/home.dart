import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MainScreen> createState() => MainScreenState();
}

class MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[50],
        elevation: 0.0,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.grey[50],
        selectedItemColor: const Color(0xFF030404),
        unselectedItemColor: Colors.grey,
        selectedFontSize: 14,
        unselectedFontSize: 14,
        currentIndex: 0, //현재 선택된 Index
        onTap: (int index) {
          // setState(() {
          //   _selectedIndex = index;
          // });
        },
        items: [
          BottomNavigationBarItem(
            title: const Text('탐색하기',
                style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold)),
            icon: Icon(Icons.location_searching_rounded, size: width * 0.08),
          ),
          BottomNavigationBarItem(
            title: const Text('나와같이', style: TextStyle(fontSize: 12.0)),
            icon: Icon(Icons.emoji_people_rounded, size: width * 0.08),
          ),
          BottomNavigationBarItem(
            title: const Text('내차관리', style: TextStyle(fontSize: 12.0)),
            icon: Icon(Icons.local_taxi_rounded, size: width * 0.08),
          ),
          BottomNavigationBarItem(
            title: const Text('더보기', style: TextStyle(fontSize: 12.0)),
            icon: Icon(Icons.more_horiz_rounded, size: width * 0.08),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text('한동같이카',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
          ],
        ),
      ),
    );
  }
}
