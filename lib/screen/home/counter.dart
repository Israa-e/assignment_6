import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int _count = 0;
  String countKey = 'counter';
  SharedPreferences? _prefs;

  @override
  void initState() {
    super.initState();
    _readCounter();
  }

  void _readCounter() async {
    _prefs = await SharedPreferences.getInstance();
    setState(() {
      _count = _prefs?.getInt('counter') ?? 0;
    });
  }

  void _increment() {
    setState(() {
      _count++;
    });
    saveCounter(_count);
  }

  void _decrement() {
    setState(() {
      _count--;
    });
    saveCounter(_count);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: _decrement, child: Icon(Icons.remove)),
              SizedBox(width: 20),

              Text('Count: $_count', style: TextStyle(fontSize: 24)),
              SizedBox(width: 20),
              ElevatedButton(onPressed: _increment, child: Icon(Icons.add)),
            ],
          ),
        ],
      ),
    );
  }

  saveCounter(int counter) async {
    _prefs = await SharedPreferences.getInstance();
    await _prefs?.setInt(countKey, counter);
  }
}
