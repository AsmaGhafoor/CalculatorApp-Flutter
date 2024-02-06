import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Calculator(),
    );
  }
}

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  Widget calculatorbtn(String btntxt, Color btncolor, Color txtcolor) {
    return ElevatedButton(
      onPressed: () {
        // todo add function for button press
      },
      style: ElevatedButton.styleFrom(
        shape: const CircleBorder(), backgroundColor: btncolor,
        padding: const EdgeInsets.all(20),
      ),
      child: Text(
        btntxt,
        style: TextStyle(fontSize: 35, color: txtcolor),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(
        title: const Text('Hello Title'),
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    '0',
                    textAlign: TextAlign.left,
                    style: TextStyle(color: Colors.white, fontSize: 100),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Here buttons function will be called where we will pass some argument
                calculatorbtn('AC', Colors.grey, Colors.black),
                calculatorbtn('+/-', Colors.grey, Colors.black),
                calculatorbtn('%', Colors.grey, Colors.black),
                calculatorbtn('/', Colors.grey, Colors.black),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Here buttons function will be called where we will pass some argument
                calculatorbtn('7', Colors.grey, Colors.black),
                calculatorbtn('8', Colors.grey, Colors.black),
                calculatorbtn('9', Colors.grey, Colors.black),
                calculatorbtn('x', Colors.grey, Colors.black),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Here buttons function will be called where we will pass some argument
                calculatorbtn('4', Colors.grey, Colors.black),
                calculatorbtn('5', Colors.grey, Colors.black),
                calculatorbtn('6', Colors.grey, Colors.black),
                calculatorbtn('-', Colors.grey, Colors.black),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Here buttons function will be called where we will pass some argument
                calculatorbtn('1', Colors.grey, Colors.black),
                calculatorbtn('2', Colors.grey, Colors.black),
                calculatorbtn('3', Colors.grey, Colors.black),
                calculatorbtn('+', Colors.grey, Colors.black),
              ],
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
