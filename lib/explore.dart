import 'package:flutter/material.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<ExploreScreen> createState() => ExploreScreenState();
}

class ExploreScreenState extends State<ExploreScreen> {
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
            Text('탐색하기',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
          ],
        ),
      ),
    );
  }
}
