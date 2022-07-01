import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/src/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  // arrow function that plays sound
  void playSound (int noteNumber) => AudioPlayer().play(AssetSource('note$noteNumber.wav'));

  Widget buildKey({Color color, int noteNumber}) {
    return Expanded(
      child: TextButton(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(color)
          ),
          onPressed: () {
            playSound(noteNumber);
          }
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildKey(
                  color: Colors.red.shade100,
                  noteNumber: 1),
              buildKey(
                  color: Colors.red.shade200,
                  noteNumber: 2),
              buildKey(
                  color: Colors.red.shade300,
                  noteNumber: 3),
              buildKey(
                  color: Colors.red.shade400,
                  noteNumber: 4),
              buildKey(
                  color: Colors.red.shade500,
                  noteNumber: 5),
              buildKey(
                  color: Colors.red.shade600,
                  noteNumber: 6),
              buildKey(
                  color: Colors.red.shade700,
                  noteNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
