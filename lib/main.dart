import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:audioplayers/audio_cache.dart';
import 'dart:math';

void main() => runApp(MotivationApp());

class MotivationApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('quote$soundNumber.wav');
  }

  Expanded buildKey({Color color, int soundNumber}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
             soundNumber = Random().nextInt(6) + 1;
          playSound(soundNumber);
        },
        child: Image.asset('assets/button.png'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
         backgroundColor: Colors.blue,
           appBar: AppBar(
          title: Text('You got this!!'),
          backgroundColor: Color.fromARGB(255, 41, 141, 223),
        ),
        body: SafeArea(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                buildKey(color: Colors.blue, soundNumber: 1),
              
             
              ],
          ),
        ),
      ),
    );
  }
}
