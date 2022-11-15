import 'package:flutter/material.dart';
import 'package:gtag_app/mainmenu/gas_fill.dart';
import 'package:gtag_app/navpage/main_page.dart';

class HomeAbel extends StatefulWidget {
  const HomeAbel({super.key, required String title});

  @override
  State<HomeAbel> createState() => _HomeAbelState();
}

class _HomeAbelState extends State<HomeAbel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Fill Gas",
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
      body: const GasBody(),
    );
  }
}
