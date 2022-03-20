import 'package:flutter/material.dart';

class MoreScreen extends StatefulWidget {
  const MoreScreen({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MoreScreen> createState() => MoreScreenState();
}

class MoreScreenState extends State<MoreScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[50],
        elevation: 0.0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text('더보기',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
          ],
        ),
      ),
    );
  }
}
