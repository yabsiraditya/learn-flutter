import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class mySound extends StatefulWidget {
  @override
  State<mySound> createState() => _mySoundState();
}

class _mySoundState extends State<mySound> {
  AudioPlayer? audioPlayer;
  String durasi = "00:00:00";

  _mySoundState() {
    audioPlayer = AudioPlayer();
    audioPlayer?.onPositionChanged.listen((duration) {
      setState(() {
        durasi = duration.toString();
      });
    });
    audioPlayer?.setReleaseMode(ReleaseMode.loop);
  }

  void playSound() async {
    String audioPath = "audio/back.mp3";
    await audioPlayer?.play(AssetSource(audioPath));
  }

  void pauseSound() async {
    await audioPlayer?.pause();
  }

  void stopSound() async {
    await audioPlayer?.stop();
  }

  void resumeSound() async {
    await audioPlayer?.resume();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Playing Sound"),
        backgroundColor: Colors.lime,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                playSound();
              },
              child: Text("Play"),
            ),
            ElevatedButton(
              onPressed: () {
                pauseSound();
              },
              child: Text("Pause"),
            ),
            ElevatedButton(
              onPressed: () {
                stopSound();
              },
              child: Text("Stop"),
            ),
            ElevatedButton(
              onPressed: () {
                resumeSound();
              },
              child: Text("Resume"),
            ),
            Text(
              durasi,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            )
          ],
        ),
      ),
    );
  }
}
