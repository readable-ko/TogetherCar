import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<ChatScreen> createState() => ChatScreenState();
}

class ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin:
                  const EdgeInsets.only(left: 15.0, right: 15.0, bottom: 15.0),
              child: people(),
            ),
            Divider(
              height: 35,
              thickness: 1,
              indent: 15,
              endIndent: 15,
              color: Colors.grey[400],
            ),
            Container(
              margin: const EdgeInsets.only(left: 15.0, right: 15.0),
              child: chat1(),
            ),
            Divider(
              height: 35,
              thickness: 1,
              indent: 15,
              endIndent: 15,
              color: Colors.grey[400],
            ),
            Container(
              margin: const EdgeInsets.only(left: 15.0, right: 15.0),
              child: chat2(),
            ),
            Divider(
              height: 35,
              thickness: 1,
              indent: 15,
              endIndent: 15,
              color: Colors.grey[400],
            ),
            Container(
              margin: const EdgeInsets.only(left: 15.0, right: 15.0),
              child: chat3(),
            ),
            Divider(
              height: 35,
              thickness: 1,
              indent: 15,
              endIndent: 15,
              color: Colors.grey[400],
            ),
          ],
        ),
      ),
    );
  }
}

Widget people() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[
      Column(children: [
        Container(
          margin: const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0),
          width: 65,
          height: 65,
          decoration: const BoxDecoration(
              color: Color.fromARGB(255, 92, 119, 150),
              borderRadius: BorderRadius.all(Radius.circular(100)) //모서리를 둥글게
              ),
          child: const Icon(Icons.person, size: 45.0, color: Colors.white),
        ),
        const Text('대화상대 1', style: TextStyle(fontSize: 13.0))
      ]),
      Column(children: [
        Container(
          margin: const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0),
          width: 65,
          height: 65,
          decoration: const BoxDecoration(
              color: Color.fromARGB(255, 152, 175, 202),
              borderRadius: BorderRadius.all(Radius.circular(100)) //모서리를 둥글게
              ),
          child: const Icon(Icons.person, size: 45.0, color: Colors.white),
        ),
        const Text('대화상대 2', style: TextStyle(fontSize: 13.0))
      ]),
      Column(children: [
        Container(
          margin: const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0),
          width: 65,
          height: 65,
          decoration: const BoxDecoration(
              color: Color(0xFF38597E),
              borderRadius: BorderRadius.all(Radius.circular(100)) //모서리를 둥글게
              ),
          child: const Icon(Icons.person, size: 45.0, color: Colors.white),
        ),
        const Text('대화상대 3', style: TextStyle(fontSize: 13.0))
      ]),
      Column(children: [
        Container(
          margin: const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0),
          width: 65,
          height: 65,
          decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius:
                  const BorderRadius.all(Radius.circular(100)) //모서리를 둥글게
              ),
          child: const Icon(Icons.search_rounded, size: 35.0),
        ),
        const Text('검색하기', style: TextStyle(fontSize: 13.0))
      ]),
    ],
  );
}

Widget chat1() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: <Widget>[
      Column(children: [
        Container(
          margin: const EdgeInsets.only(left: 10.0, right: 16.0),
          width: 60,
          height: 60,
          decoration: const BoxDecoration(
              color: Color.fromARGB(255, 92, 119, 150),
              borderRadius: BorderRadius.all(Radius.circular(100)) //모서리를 둥글게
              ),
          child: const Icon(Icons.person, size: 40.0, color: Colors.white),
        ),
      ]),
      Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const Text('대화상대 1', style: TextStyle(fontSize: 15.0)),
        Container(
          margin: const EdgeInsets.only(top: 5.0),
          child: Text('히딩크 뒤 주차장으로 오시면 됩니다!',
              style: TextStyle(fontSize: 15.0, color: Colors.grey[500])),
        ),
      ]),
    ],
  );
}

Widget chat2() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: <Widget>[
      Column(children: [
        Container(
          margin: const EdgeInsets.only(left: 10.0, right: 16.0),
          width: 60,
          height: 60,
          decoration: const BoxDecoration(
              color: Color.fromARGB(255, 152, 175, 202),
              borderRadius: BorderRadius.all(Radius.circular(100)) //모서리를 둥글게
              ),
          child: const Icon(Icons.person, size: 40.0, color: Colors.white),
        ),
      ]),
      Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const Text('대화상대 2', style: TextStyle(fontSize: 15.0)),
        Container(
          margin: const EdgeInsets.only(top: 5.0),
          child: Text('혹시 현재 어디쯤 오고 계신가요?',
              style: TextStyle(fontSize: 15.0, color: Colors.grey[500])),
        ),
      ]),
    ],
  );
}

Widget chat3() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: <Widget>[
      Column(children: [
        Container(
          margin: const EdgeInsets.only(left: 10.0, right: 16.0),
          width: 60,
          height: 60,
          decoration: const BoxDecoration(
              color: Color(0xFF38597E),
              borderRadius: BorderRadius.all(Radius.circular(100)) //모서리를 둥글게
              ),
          child: const Icon(Icons.person, size: 40.0, color: Colors.white),
        ),
      ]),
      Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const Text('대화상대 3', style: TextStyle(fontSize: 15.0)),
        Container(
          margin: const EdgeInsets.only(top: 5.0),
          child: Text('도착하시는 대로 바로 출발할게요!',
              style: TextStyle(fontSize: 15.0, color: Colors.grey[500])),
        ),
      ]),
    ],
  );
}
