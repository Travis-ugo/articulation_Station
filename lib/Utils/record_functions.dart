import 'package:flutter/material.dart';
import 'package:flutter_sound_lite/flutter_sound.dart';
import 'package:permission_handler/permission_handler.dart';

class AudioRecorder extends StatefulWidget {
  const AudioRecorder({Key? key}) : super(key: key);

  @override
  _AudioRecorderState createState() => _AudioRecorderState();
}

class _AudioRecorderState extends State<AudioRecorder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          onPressed: () {},
          child: const Text('Start Recording'),
        ),
      ),
    );
  }
}

class Sound {
  FlutterSoundRecorder? _audioRecorder;
  bool _isRecordingInitialized = false;
  bool get isRecording => _audioRecorder!.isRecording;

  Future _record() async {
    if (_isRecordingInitialized) return;
    await _audioRecorder!.startRecorder();
  }

  Future _stopRecord() async {
    if (_isRecordingInitialized) return;
    await _audioRecorder!.stopRecorder();
  }

  Future _init() async {
    _audioRecorder = FlutterSoundRecorder();
    await _audioRecorder!.openAudioSession();
    final status = await Permission.microphone.request();
    if (status != PermissionStatus.granted) {
      throw RecordingPermissionException('microphone permission needed');
    }
    _isRecordingInitialized = true;
  }

  Future _dispose() async {
    if (_isRecordingInitialized) return;
    await _audioRecorder!.closeAudioSession();
    _audioRecorder = null;
    _isRecordingInitialized = false;
  }
}
