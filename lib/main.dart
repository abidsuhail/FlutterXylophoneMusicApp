import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
void main() => runApp(
    XylophoneApp()
);

void playSound(int soundNum)
{
  final player = AudioCache();
  player.play('note$soundNum.wav');
}

Expanded expandedButtonWithSound(MaterialColor color,int soundNum)
{
  return Expanded(
    child: FlatButton(
      color: color,
      onPressed: (){
        playSound(soundNum);
      },
    ),
  );
}
class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
            expandedButtonWithSound(Colors.red, 1),
            expandedButtonWithSound(Colors.orange, 2),
            expandedButtonWithSound(Colors.yellow, 3),
            expandedButtonWithSound(Colors.green, 4),
            expandedButtonWithSound(Colors.teal, 5),
            expandedButtonWithSound(Colors.blue, 6),
            expandedButtonWithSound(Colors.purple, 7)
            ],
          ),
        ),
      ),
    );
  }
}
