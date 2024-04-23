import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: SafeArea(
      child: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: const Center(child: Text("Dice")),
          backgroundColor: Colors.red,
          foregroundColor: const Color.fromRGBO(255, 255, 255, 1),
        ),
        body: const DicePage(),
      ),
    ),
  ));
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  void changeDiceFce() {
    leftDiceNumber = Random().nextInt(6) + 1;
    rightDiceNumber = Random().nextInt(6) + 1;
  }

  int leftDiceNumber = 2;
  int rightDiceNumber = 5;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(children: [
        Expanded(
          child: TextButton(
            onPressed: () => {
              setState(() {
                changeDiceFce();
              })
            },
            child: Image.asset("assets/images/dice$leftDiceNumber.png"),
          ),
        ),
        Expanded(
          child: TextButton(
            onPressed: () => {
              setState(() {
                changeDiceFce();
              })
            },
            child: Image.asset("assets/images/dice$rightDiceNumber.png"),
          ),
        )
      ]),
    );
  }
}
