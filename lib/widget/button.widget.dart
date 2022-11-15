import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String text;
  final VoidCallback onClicked;

  const ButtonWidget({
    Key? key,
    required this.text,
    required this.onClicked,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              shape: StadiumBorder(), onPrimary: Colors.white),
          child: Text(text),
          onPressed: onClicked,
        ),
      );
}