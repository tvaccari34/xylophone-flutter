import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';


void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playSound(int noteNumber) {
    final player = AudioCache();
    player.play('note$noteNumber.wav');
  }

  Expanded buildKey({int noteNumber, Color colorKey}) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playSound(noteNumber);
        },
        color: colorKey,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                buildKey(noteNumber: 1, colorKey: Colors.red),
                buildKey(noteNumber: 2, colorKey: Colors.orange),
                buildKey(noteNumber: 3, colorKey: Colors.yellow),
                buildKey(noteNumber: 4, colorKey: Colors.green),
                buildKey(noteNumber: 5, colorKey: Colors.teal),
                buildKey(noteNumber: 6, colorKey: Colors.blue),
                buildKey(noteNumber: 7, colorKey: Colors.deepPurple),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
