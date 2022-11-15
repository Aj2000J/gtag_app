import 'package:flutter/material.dart';
import 'package:gtag_app/mainmenu/checkin.dart';

class GasBody extends StatefulWidget {
  const GasBody({super.key});

  @override
  State<GasBody> createState() => _GasBodyState();
}

class _GasBodyState extends State<GasBody> {
  //defined function
  String? chooseCountry;
  String? choosePrice;

  //list for selections
  List<String> countryList = [
    "RON95",
    "RON97",
    "DIESEL",
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.grey[300],
            ),
            padding: const EdgeInsets.all(12),
            height: 70,
            width: 300,
            child: DropdownButton(
              hint: const Text('Choose Gas'),
              value: chooseCountry,
              isExpanded: true,
              items: ["RON95", "RON97", "DIESEL"].map(
                (item) {
                  return DropdownMenuItem(
                    value: item,
                    child: Text(item),
                  );
                },
              ).toList(),
              onChanged: (value) {
                setState(
                  () {
                    chooseCountry = value;
                  },
                );
              },
            ),
          ),
        ),
        SizedBox(
          height: 20,
          child: Text("Additional Notes"),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.grey[300],
          ),
          height: 150,
          width: 300,
          child: const TextField(
            expands: true,
            maxLines: null,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        FloatingActionButton(
          backgroundColor: Colors.pink,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(3),
          ),
          onPressed: () => Navigator.push(
              context, MaterialPageRoute(builder: (_) => HomePage2Abel())),
          child: const Text("Send"),
        ),
      ],
    );
  }
}
