import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              playNote(color: Colors.red,noteType: 1),
              playNote(color: Colors.orange,noteType: 2),
              playNote(color: Colors.yellow,noteType: 3),
              playNote(color: Colors.green,noteType: 4),
              playNote(color: Colors.blue,noteType: 5),
              playNote(color: Colors.indigo,noteType: 6),
              playNote(color: Colors.purple,noteType: 7),
            ],
          ),
        ),
      ),
    );
  }

  void touchedNotes(int notesNumber) {
    final player = AudioCache();
    player.play('note$notesNumber.wav');
  }

  Widget playNote({Color color,int noteType}) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          touchedNotes(noteType);
        },
        color: color,
      ),
    );
  }
}
