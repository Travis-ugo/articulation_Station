import 'dart:async';

import 'package:flutter/material.dart';

class Timly extends StatefulWidget {
  const Timly({Key? key}) : super(key: key);

  @override
  _TimlyState createState() => _TimlyState();
}

class _TimlyState extends State<Timly> {
  int _number = 0;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        _number = timer.tick;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Text(_number.toString()),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
}
