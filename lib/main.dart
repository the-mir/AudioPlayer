import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MusicPro(),
    ),
  );
}

void playSound(int? soundNumber) {
  final player = AudioCache(prefix: "assets/audio/");
  player.play('assets_note$soundNumber.mp3');
}

Widget buildMusicButton({Color? color, int? soundNumber,String ? st}) {
  return Expanded(
    child: Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Color(0xff455A64),
          width: 5.0,
          style: BorderStyle.solid,
        ),
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
      child: TextButton(
        child: Text("$st",style: TextStyle(fontSize: 24.0,fontWeight: FontWeight.bold,color: Colors.white),),
        onPressed: () {
          playSound(soundNumber);
        },
      ),
    ),
  );
}

class MusicPro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          buildMusicButton(color: Colors.green,soundNumber:0,st:"0"),
          buildMusicButton(color: Colors.orange,soundNumber:1,st:"1"),
          buildMusicButton(color: Colors.blue,soundNumber:2,st:"2"),
          buildMusicButton(color: Colors.yellow,soundNumber:3,st:"3"),
          buildMusicButton(color: Colors.teal,soundNumber:4,st:"4"),
          buildMusicButton(color: Colors.cyan,soundNumber:5,st:"5"),
        ],
      ),
    );
  }
}
