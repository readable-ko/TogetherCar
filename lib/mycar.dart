import 'package:flutter/material.dart';

class MyCarScreen extends StatefulWidget {
  const MyCarScreen({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyCarScreen> createState() => MyCarScreenState();
}

class MyCarScreenState extends State<MyCarScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[50],
        elevation: 0.0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text('내차관리',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
          ],
        ),
      ),
    );
  }
}
