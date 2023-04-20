import 'package:flutter/material.dart';
import 'dart:math';

int getRandomNumber() {
  return Random().nextInt(6) + 1;
}

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void changeDiceNumbers() {
    leftDiceNumber = getRandomNumber();
    rightDiceNumber = getRandomNumber();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Row(
          children: [
            Expanded(
              child: TextButton(
                child: Image.asset('images/dice${leftDiceNumber}.png'),
                onPressed: () => {
                  setState(() {
                    changeDiceNumbers();
                  }),
                },
              ),
            ),
            Expanded(
              child: TextButton(
                child: Image.asset('images/dice${rightDiceNumber}.png'),
                onPressed: () => {
                  setState(() {
                    changeDiceNumbers();
                  })
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
