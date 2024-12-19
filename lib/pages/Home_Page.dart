import 'package:flutter/material.dart';
import 'package:toku/components/models/itemModel.dart';
import '../widgets/item.dart';

class homePage extends StatelessWidget {
  List<itemModel> morseCodeList = [
    itemModel(enDigitOrLetter: 'A', morseCode: '.-', tunePath: 'tunes/A.wav'),
    itemModel(enDigitOrLetter: 'B', morseCode: '-...', tunePath: 'tunes/B.wav'),
    itemModel(enDigitOrLetter: 'C', morseCode: '-.-.', tunePath: 'tunes/C.wav'),
    itemModel(enDigitOrLetter: 'D', morseCode: '-..', tunePath: 'tunes/D.wav'),
    itemModel(enDigitOrLetter: 'E', morseCode: '.', tunePath: 'tunes/E.wav'),
    itemModel(enDigitOrLetter: 'F', morseCode: '..-.', tunePath: 'tunes/F.wav'),
    itemModel(enDigitOrLetter: 'G', morseCode: '--.', tunePath: 'tunes/G.wav'),
    itemModel(enDigitOrLetter: 'H', morseCode: '....', tunePath: 'tunes/H.wav'),
    itemModel(enDigitOrLetter: 'I', morseCode: '..', tunePath: 'tunes/I.wav'),
    itemModel(enDigitOrLetter: 'J', morseCode: '.---', tunePath: 'tunes/J.wav'),
    itemModel(enDigitOrLetter: 'K', morseCode: '-.-', tunePath: 'tunes/K.wav'),
    itemModel(enDigitOrLetter: 'L', morseCode: '.-..', tunePath: 'tunes/L.wav'),
    itemModel(enDigitOrLetter: 'M', morseCode: '--', tunePath: 'tunes/M.wav'),
    itemModel(enDigitOrLetter: 'N', morseCode: '-.', tunePath: 'tunes/N.wav'),
    itemModel(enDigitOrLetter: 'O', morseCode: '---', tunePath: 'tunes/O.wav'),
    itemModel(enDigitOrLetter: 'P', morseCode: '.--.', tunePath: 'tunes/P.wav'),
    itemModel(enDigitOrLetter: 'Q', morseCode: '--.-', tunePath: 'tunes/Q.wav'),
    itemModel(enDigitOrLetter: 'R', morseCode: '.-.', tunePath: 'tunes/R.wav'),
    itemModel(enDigitOrLetter: 'S', morseCode: '...', tunePath: 'tunes/S.wav'),
    itemModel(enDigitOrLetter: 'T', morseCode: '-', tunePath: 'tunes/T.wav'),
    itemModel(enDigitOrLetter: 'U', morseCode: '..-', tunePath: 'tunes/U.wav'),
    itemModel(enDigitOrLetter: 'V', morseCode: '...-', tunePath: 'tunes/V.wav'),
    itemModel(enDigitOrLetter: 'W', morseCode: '.--', tunePath: 'tunes/W.wav'),
    itemModel(enDigitOrLetter: 'X', morseCode: '-..-', tunePath: 'tunes/X.wav'),
    itemModel(enDigitOrLetter: 'Y', morseCode: '-.--', tunePath: 'tunes/Y.wav'),
    itemModel(enDigitOrLetter: 'Z', morseCode: '--..', tunePath: 'tunes/Z.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Morse Code',
            style: TextStyle(
              color: Colors.black,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
        ),
        body: GridView.count(
          crossAxisCount: 5, // Number of columns
          crossAxisSpacing: 10, // Space between columns
          mainAxisSpacing: 10, // Space between rows
          padding: const EdgeInsets.all(10),
          children: List.generate(
            morseCodeList.length,
            (index) {
              return Container(
                alignment: Alignment.bottomCenter,
                child: item(
                  Box: morseCodeList[index], // Pass the corresponding object
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
