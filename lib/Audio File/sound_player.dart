import 'package:flutter/material.dart';
import 'package:flutter_sound_lite/flutter_sound.dart';

const pathToSaveAudio = 'audio_example.aac';

class SoundPlayer {
  FlutterSoundPlayer? _audioPlayer;

  bool get isPlaying => _audioPlayer!.isPlaying;

  Future _play(
      {VoidCallback? whenFinished,
      required String soundURL,
      required double timeStamp}) async {
    _audioPlayer!.seekToPlayer(Duration(seconds: timeStamp.toInt()));
    await _audioPlayer!.startPlayer(
      whenFinished: whenFinished,
      fromURI: soundURL,
      // 'https://firebasestorage.googleapis.com/v0/b/oblack123.appspot.com/o/Audio%20FIles%2FB1-%20Sentences-%20Man.mp3?alt=media&token=baeb0166-d0fa-4f3c-997f-77cb204b481f',
    );
  }

  Future _stop() async {
    await _audioPlayer!.stopPlayer();
  }

  Future twitchPlayer(
      {required VoidCallback? whenFinished,
      required String soundURL,
      required double timeStamp}) async {
    if (_audioPlayer!.isStopped) {
      await _play(
          whenFinished: whenFinished, soundURL: soundURL, timeStamp: timeStamp);
    } else {
      await _stop();
    }
  }

  Future init() async {
    _audioPlayer = FlutterSoundPlayer();
    await _audioPlayer!.openAudioSession(
      withUI: true,

      /// Play data from a track specification and display controls on the lock screen or an Apple Watch.
      ///
      /// The Audio Session must have been open with the parameter `withUI`.
    );
  }

  void dispose() {
    _audioPlayer!.closeAudioSession();
    _audioPlayer = null;
  }
}
