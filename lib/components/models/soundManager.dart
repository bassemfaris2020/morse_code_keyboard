import 'package:audioplayers/audioplayers.dart';

class SoundManager {
  static final SoundManager _instance = SoundManager._internal();
  final List<String> _soundQueue = [];
  bool _isPlaying = false;
  final AudioPlayer _audioPlayer = AudioPlayer();

  SoundManager._internal();

  static SoundManager get instance => _instance;

  void addToQueue(String soundPath) {
    _soundQueue.add(soundPath);
    if (!_isPlaying) {
      _playNext();
    }
  }

  void _playNext() {
    if (_soundQueue.isEmpty) {
      _isPlaying = false;
      return;
    }

    _isPlaying = true;
    String nextSound = _soundQueue.removeAt(0);

    _audioPlayer.play(AssetSource(nextSound)).then((_) {
      _playNext(); // Play the next sound after the current one finishes.
    });
  }
}
