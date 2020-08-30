import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatefulWidget {
  @override
  _XylophoneAppState createState() => _XylophoneAppState();
}

class _XylophoneAppState extends State<XylophoneApp> {

  void playSound(int soundNumber){
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded BuildKey({Color color, int soundNumber}){
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(soundNumber);
        },
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
            children: [
              BuildKey(color:Colors.blue[900], soundNumber : 1),
              BuildKey(color:Colors.blue[800], soundNumber : 2),
              BuildKey(color:Colors.blue[700], soundNumber : 3),
              BuildKey(color:Colors.blue[600], soundNumber : 4),
              BuildKey(color:Colors.blue[500], soundNumber : 5),
              BuildKey(color:Colors.blue[400], soundNumber : 6),
              BuildKey(color:Colors.blue[300], soundNumber : 7),
            ],
          ),
        ),
      ),
    );
  }
}
