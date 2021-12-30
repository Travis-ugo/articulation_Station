import 'package:flutter_sound_lite/public/flutter_sound_recorder.dart';
import 'package:oblack_tech/audi/timer.dart';
import 'package:permission_handler/permission_handler.dart';

const pathToSaveAudio = 'audio_example.aac';

class Sound {
  FlutterSoundRecorder? _audioRecorder;
  TimerWidget? time;

  bool _isRecordingInitialized = false;
  bool get isRecording => _audioRecorder!.isRecording;

  // start audio recording.
  Future _startRecord() async {
    if (_isRecordingInitialized) return;
    await _audioRecorder!.startRecorder(toFile: pathToSaveAudio);
  }

  // stop audio recording.
  Future _stopRecord() async {
    if (_isRecordingInitialized) return;
    await _audioRecorder!.stopRecorder();
  }

  Future twicth() async {
    if (_audioRecorder!.isStopped) {
      await _startRecord();
    } else {
      await _stopRecord();
    }
  }

  Future init() async {
    _audioRecorder = FlutterSoundRecorder();
    await _audioRecorder!.openAudioSession();
    final status = await Permission.microphone.request();
    if (status != PermissionStatus.granted) {
      throw RecordingPermissionException('microphone permission needed');
    }
    _isRecordingInitialized = true;
  }

  Future dispose() async {
    if (_isRecordingInitialized) return;
    await _audioRecorder!.closeAudioSession();
    _audioRecorder = null;
    _isRecordingInitialized = false;
  }
}
