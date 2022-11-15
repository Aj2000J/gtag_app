// ignore_for_file: must_be_immutable, prefer_const_constructors

import 'package:flutter/material.dart';

class MyCircle extends StatelessWidget {
  MyCircle({super.key});
  String? status;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 100,
        color: Colors.cyanAccent[400],
        child: ListTile(
          leading: Text(
            "SAA5376",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          trailing: Text("Under Maintenance"),
          subtitle: Text("Car Condition : Engine Repairs"),
          title: Text("Unavavailabe"),
          onTap: () {
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  content: SizedBox(
                    height: 120,
                    child: Column(
                      children: [
                        RadioListTile(
                          value: 1,
                          groupValue: 1,
                          onChanged: (val) {},
                          activeColor: Colors.blue,
                          title: Text("Check In"),
                        ),
                        RadioListTile(
                          value: 1,
                          groupValue: 1,
                          onChanged: (val) {},
                          activeColor: Colors.blue,
                          title: Text("Check Out"),
                        ),
                      ],
                    ),
                  ),
                  title: Text("Check in/Out"),
                  actions: [
                    TextButton(
                      onPressed: () {},
                      child: Text("Send"),
                    ),
                  ],
                );
              },
            );
          },
        ),
      ),
    );
  }
}
