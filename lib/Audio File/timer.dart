import 'dart:async';
import 'package:flutter/material.dart';

class TimeController extends ValueNotifier<bool> {
  TimeController({bool isPlaying = false}) : super(isPlaying);

  void startTimer() => value = true;
  void stopTimer() => value = false;
}

class TimerWidget extends StatefulWidget {
  const TimerWidget({Key? key, required this.controller}) : super(key: key);
  final TimeController controller;

  @override
  _TimerWidgetState createState() => _TimerWidgetState();
}

class _TimerWidgetState extends State<TimerWidget> {
  Duration? duration = const Duration();
  Timer? timer;

  @override
  void initState() {
    super.initState();

    widget.controller.addListener(() {});

    if (widget.controller.value) {
      startTimer();
    } else {
      stopTimer();
    }
  }

  void reset() => setState(() => duration = const Duration());

  void addTimer() {
    const addSeconds = 1;
    final seconds = duration!.inSeconds + addSeconds;
    setState(() {
      // final seconds = duration!.inSeconds + addSeconds;

      if (seconds < 0) {
        timer?.cancel();
      } else {
        duration = Duration(seconds: seconds);
      }
    });
  }

  void startTimer({bool resets = true}) {
    if (!mounted) return;
    if (resets) reset();

    timer = Timer.periodic(const Duration(seconds: 1), (_) => addTimer());
  }

  void stopTimer({bool resets = true}) {
    if (!mounted) return;
    if (resets) reset();
    setState(() => timer?.cancel());
  }

  @override
  Widget build(BuildContext context) {
    return Text(widget.controller.value.toString());
  }
}
