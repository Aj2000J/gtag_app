import 'package:gtag_app/mainmenu/list_view.dart';
import 'package:gtag_app/setting/list_v2.dart';
import 'package:flutter/material.dart';
import 'package:gtag_app/navpage/main_page.dart';

class HomePage2Abel extends StatefulWidget {
  const HomePage2Abel({super.key});

  @override
  State<HomePage2Abel> createState() => _HomePage2AbelState();
}

class _HomePage2AbelState extends State<HomePage2Abel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Check In Vehicle",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Colors.pink,
          ),
          onPressed: () => Navigator.push(
              context, MaterialPageRoute(builder: (_) => MainPage())),
        ),
      ),
      body: Column(
        children: [
          MySquare(),
          MyCircle(),
        ],
      ),
    );
  }
}
