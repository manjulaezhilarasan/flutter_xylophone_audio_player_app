import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(const MyApp());


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    void playSound(int songNumber){
    final player = AudioPlayer();
    player.play(
      AssetSource('note$songNumber.wav'),
    );
    }

     Expanded buildKey({required int songNumber, required Color color}){
       return Expanded(
        child: TextButton(
          style: TextButton.styleFrom(
              backgroundColor: color,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.zero,
              )
          ),
          onPressed: () {
            playSound(songNumber);
          },
          child: Text(''),
        ),
      );
    }

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(songNumber: 1, color: Colors.orange),
              buildKey(songNumber: 2, color: Colors.yellow),
              buildKey(songNumber: 3, color: Colors.red),
              buildKey(songNumber: 4, color: Colors.green),
              buildKey(songNumber: 5, color: Colors.lightBlue),
              buildKey(songNumber: 6, color: Colors.pinkAccent),
              buildKey(songNumber: 7, color: Colors.lightGreenAccent),
            ],
          ),
        ),
      ),
    );
  }
}
