import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(const XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  void playSound(int soundNumber) {
    final player = AudioPlayer();
    player.play(AssetSource('note$soundNumber.wav'));
  }

  Widget buildWidget({Color? color, int? soundToPlay}) {
    return Expanded(
      child: TextButton(
        child: Container(
          color: color,
        ),
        onPressed: () {
          if (soundToPlay != null) {
            playSound(soundToPlay);
          }
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
            children: <Widget>[
              buildWidget(color: Colors.red, soundToPlay: 1),
              buildWidget(color: Colors.orange, soundToPlay: 2),
              buildWidget(color: Colors.amber, soundToPlay: 3),
              buildWidget(color: Colors.green, soundToPlay: 4),
              buildWidget(color: Colors.teal, soundToPlay: 5),
              buildWidget(color: Colors.blue, soundToPlay: 6),
              buildWidget(color: Colors.purple, soundToPlay: 7),
            ],
          ),
        ),
      ),
    );
  }
}
