import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  @override
  _CounterScreenState createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int _counter = 0;

  @override
  void initState() {
    super.initState();
    print("initState aufruf");
  }

  @override
  void dispose() {
    print("dispose aufruf");
    super.dispose();
  }

  void _incrementCounter() {
    setState(() {
      _counter += 2;
    });
  }

  @override
  Widget build(BuildContext context) {
    print("build called");
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '$_counter',
              style: TextStyle(fontSize: 48),
            ),
            SizedBox(height: 20),
            OutlinedButton(
              onPressed: _incrementCounter,
              child: Text('Erhöht sich um 2'),
            ),
          ],
        ),
      ),
    );
  }
}