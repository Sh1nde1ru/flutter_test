import 'package:flutter/material.dart';
import 'package:testapp/widgets/dice.dart';
import 'dart:math';

int getRandomInt(int min, int max) {
  final random = Random();
  return min + random.nextInt(max - min + 1);
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dice roll',
      theme: ThemeData(
        colorScheme:
            ColorScheme.dark().copyWith(secondaryContainer: Colors.red),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'World Colission'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Dice roll: ',
              style: TextStyle(
                  color: Colors.red, fontWeight: FontWeight.bold, fontSize: 40),
            ),
            Dice(num: _counter),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() {
          _counter = Random().nextInt(6) + 1;
        }),
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
