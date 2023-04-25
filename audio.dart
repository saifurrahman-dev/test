import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audio_cache.dart';

class AudioPlayerPage extends StatelessWidget {
  AudioCache audioCache = AudioCache();
  String audioPath = 'assets/audio/sample.mp3'; // Replace with your audio file path

  void _playAudio() async {
    await audioCache.play(audioPath);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Audio Player'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Audio File: $audioPath',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 16),
            RaisedButton(
              onPressed: _playAudio,
              child: Text('Play'),
            ),
          ],
        ),
      ),
    );
  }
}
