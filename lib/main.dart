import 'package:flutter/material.dart';

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

class DicePage extends StatelessWidget {
  const DicePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(children: [
        Expanded(
          child: TextButton(
            onPressed: () => {
              // ignore: avoid_print
              print("left bbutton pressed")
            },
            child: Image.asset("assets/images/dice1.png"),
          ),
        ),
        Expanded(
          child: TextButton(
            onPressed: () => {
              // ignore: avoid_print
              print("right button clicked"),
            },
            child: Image.asset("assets/images/dice2.png"),
          ),
        )
      ]),
    );
  }
}
