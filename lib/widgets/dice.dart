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
        color: Colors.deepOrange,
        borderRadius: BorderRadius.circular(100),
        boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(0.5),
              blurRadius: 10,
              spreadRadius: 3)
        ],
      ),
      child: Center(
        child: Text(
          '${widget.num}',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
    );
  }
}
