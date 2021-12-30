import 'package:flutter/material.dart';
import 'package:oblack_tech/audi/timer.dart';
import 'sound_player.dart';
import 'sound_recoder.dart';

class AudioRecorder extends StatefulWidget {
  const AudioRecorder({Key? key}) : super(key: key);

  @override
  _AudioRecorderState createState() => _AudioRecorderState();
}

class _AudioRecorderState extends State<AudioRecorder> {
  final recorder = Sound();
  final timeController = TimeController();
  final player = SoundPlayer();

  @override
  void initState() {
    super.initState();
    recorder.init();
    player.init();
  }

  @override
  void dispose() {
    recorder.dispose();
    player.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CircleAvatar(
              backgroundColor: Colors.blueAccent,
              radius: 50,
              child: TimerWidget(controller: timeController),
            ),
            audioStart(),
            play(),
          ],
        ),
      ),
    );
  }

  Widget play() {
    final isPlaying = player.isPlaying;

    final icon = isPlaying ? Icons.stop : Icons.play_arrow;

    final text = isPlaying ? 'Stop Playing' : 'Playing Recording';

    final Color primary = isPlaying ? Colors.redAccent : Colors.blueAccent;

    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(175, 50),
        primary: primary,
        onPrimary: Colors.white,
      ),
      onPressed: () async {
        await player.twitchPlayer(whenFinished: () => setState(() {}));
        setState(() {});
      },
      icon: Icon(icon),
      label: Text(text),
    );
  }

  Widget audioStart() {
    bool isRecording = recorder.isRecording;

    final IconData icon = isRecording ? Icons.stop : Icons.mic;

    final String text = isRecording ? 'Stop' : 'Start';

    final Color primary = isRecording ? Colors.redAccent : Colors.blueAccent;
    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(175, 50),
        primary: primary,
        onPrimary: Colors.white,
      ),
      onPressed: () async {
        await recorder.twicth();
        final isRecording = recorder.isRecording;
        setState(() {});

        if (isRecording) {
          timeController.startTimer();
        } else {
          timeController.stopTimer();
        }
      },
      icon: Icon(icon),
      label: Text(text),
    );
  }
}
