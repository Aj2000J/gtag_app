import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gtag_app/model/user.dart';
import 'package:gtag_app/utils/user_preference.dart';
import 'package:gtag_app/widget/profile_widget.dart';
import 'package:gtag_app/widget/button.widget.dart';

class ProfilePageTwo extends StatefulWidget {
  const ProfilePageTwo({super.key});

  @override
  State<ProfilePageTwo> createState() => _ProfilePageTwoState();
}

class _ProfilePageTwoState extends State<ProfilePageTwo> {
  @override
  Widget build(BuildContext context) {
    final user = UserPreferences.myUser;

    return Scaffold(
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          ProfileWidget(
            imagePath: user.imagePath,
            onClicked: () async {},
          ),
          const SizedBox(height: 24),
          buildName(user),
          const SizedBox(height: 24),
          Center(child: buildUpradeButtom()),
          const SizedBox(height: 24),
          buildAbout(user),
        ],
      ),
    );
  }

  Widget buildName(User user) => Column(
        children: [
          Text(
            user.name,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
          const SizedBox(height: 4),
          Text(
            user.email,
            style: TextStyle(color: Colors.grey),
          )
        ],
      );

  Widget buildUpradeButtom() => ButtonWidget(
        text: 'Welcome Driver',
        onClicked: () {},
      );

  Widget buildAbout(User user) => Container(
        padding: EdgeInsets.symmetric(horizontal: 48),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Note for Me',
              style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Text(
              user.about,
              style: TextStyle(fontSize: 16, height: 1.4),
            )
          ],
        ),
      );
}
