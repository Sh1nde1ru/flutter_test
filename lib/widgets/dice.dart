import 'package:flutter/material.dart';

class Dice extends StatefulWidget {
  final int num;
  Dice({required this.num, Key? key}) : super(key: key);

  @override
  DiceState createState() => DiceState();
}

class DiceState extends State<Dice> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.blueGrey[300],
        borderRadius: BorderRadius.circular(100),
      ),
      child: Center(
        child: Text(
          '${widget.num}',
          style: TextStyle(
              fontSize: 40, fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
    );
  }
}
