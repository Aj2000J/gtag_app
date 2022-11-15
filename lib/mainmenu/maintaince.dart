import 'package:flutter/material.dart';
import 'package:gtag_app/screen/homepage.dart';
import 'package:gtag_app/screen/sign_in.dart';

class MaintaincePage extends StatefulWidget {
  const MaintaincePage({Key? key}) : super(key: key);

  @override
  State<MaintaincePage> createState() => _MaintaincePageState();
}

class _MaintaincePageState extends State<MaintaincePage> {
  final userNameController = TextEditingController();
  final userAgeController = TextEditingController();
  final userSalaryController = TextEditingController();

  // late DatabaseReference dbRef;

  @override
  void initState() {
    // super.initState();
    // dbRef = FirebaseDatabase.instance.ref().child('Students');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Center(child: Text("Insert Data Maintaince Report")),
          backgroundColor: Colors.black,
          actions: [
            IconButton(
                onPressed: () {},
                icon: Image.asset('assets/images/playstore.png')),
            IconButton(
                onPressed: () => Navigator.push(
                    context, MaterialPageRoute(builder: (_) => SignInPage())),
                icon: Icon(
                  Icons.logout,
                  color: Colors.white,
                ))
          ]),
      body: ListView(
        children: [
          Center(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                children: [
                  const Text(
                    'Inserting your maintaince report ',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20),
                  TextField(
                    controller: userNameController,
                    keyboardType: TextInputType.text,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'VEHICLE_ID',
                      // hintText: 'ENTER ID',
                    ),
                  ),
                  SizedBox(height: 20),
                  TextField(
                    controller: userAgeController,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'DRIVER ID',
                      // hintText: 'ENTER ID',
                    ),
                  ),
                  SizedBox(height: 20),
                  TextField(
                    controller: userNameController,
                    keyboardType: TextInputType.text,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'FILL DATE TIME',
                      // hintText: 'ENTER DATE TIME',
                    ),
                  ),
                  SizedBox(height: 20),
                  TextField(
                    controller: userNameController,
                    keyboardType: TextInputType.text,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'COST',
                      // hintText: 'COST',
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  MaterialButton(
                    onPressed: () => Navigator.push(
                        context, MaterialPageRoute(builder: (_) => HomePage())),
                    child: const Text('Insert Data'),
                    color: Colors.blue,
                    textColor: Colors.white,
                    minWidth: 300,
                    height: 40,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
