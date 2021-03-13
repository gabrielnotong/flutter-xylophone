import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              this.buildKey(color: Colors.red, soundNumber: 1),
              this.buildKey(color: Colors.yellow, soundNumber: 2),
              this.buildKey(color: Colors.grey, soundNumber: 3),
              this.buildKey(color: Colors.green, soundNumber: 4),
              this.buildKey(color: Colors.pink, soundNumber: 5),
              this.buildKey(color: Colors.blue, soundNumber: 6),
              this.buildKey(color: Colors.purple, soundNumber: 7),
            ]
          ),
        ),
      ),
    );
  }

  Widget buildKey({Color color, int soundNumber}) {
    return Expanded(
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(color),
        ),
        onPressed: () {
          final player = AudioCache();
          player.play('note$soundNumber.wav');
          print('note$soundNumber.wav');
        },
        child: Text(''),
      ),
    );
  }
}