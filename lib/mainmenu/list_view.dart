// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, must_be_immutable, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

class MySquare extends StatelessWidget {
  MySquare({super.key});

  createAlertDialog(BuildContext context) {}
  String? status;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 100,
        color: Colors.red[400],
        child: ListTile(
          leading: Text(
            "SAB3344",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          trailing: Text("Low Maintenance"),
          subtitle: Text("Car Condition : Low Fuel"),
          title: Text("Available"),
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
