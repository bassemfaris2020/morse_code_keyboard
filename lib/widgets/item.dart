import 'package:flutter/material.dart';
import 'package:toku/components/models/itemModel.dart';
import 'package:toku/components/models/soundManager.dart';

class item extends StatelessWidget {
  final itemModel Box;

  item({required this.Box});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        color: Colors.blue,
        height: 90,
        width: 90,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              Box.enDigitOrLetter,
              style: const TextStyle(fontSize: 20),
            ),
            Text(
              Box.morseCode,
              style: const TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
      onTap: () {
        SoundManager.instance.addToQueue(Box.tunePath);
      },
    );
  }
}
