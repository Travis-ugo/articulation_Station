import 'package:flutter/material.dart';
import 'package:oblack_tech/audi/timer.dart';
import 'sound_player.dart';
import 'sound_recoder.dart';

class AudioRecorder extends StatefulWidget {
  final String text;
  final String soundURL;
  final double timeStamp;
  const AudioRecorder({
    Key? key,
    required this.text,
    required this.soundURL,
    required this.timeStamp,
  }) : super(key: key);

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
    return play();
  }

  Widget play() {
    final isPlaying = player.isPlaying;

    final icon = isPlaying ? Icons.stop : Icons.play_arrow;

    final text = isPlaying ? 'Stop Playing' : 'Playing Recording';

    final Color primary = isPlaying ? Colors.redAccent : Colors.blueAccent;

    return TextButton(
      child: Text(widget.text),
      onPressed: () async {
        await player.twitchPlayer(
            whenFinished: () => setState(() {}),
            soundURL: widget.soundURL,
            // 'https://firebasestorage.googleapis.com/v0/b/oblack123.appspot.com/o/Audio%20FIles%2FB1-%20Sentences-%20Man.mp3?alt=media&token=baeb0166-d0fa-4f3c-997f-77cb204b481f',
            timeStamp: widget.timeStamp);
        setState(() {});
      },
      // icon: Icon(icon),
      // label: Text(text),
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
