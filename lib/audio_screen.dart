import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
class AudioScreen extends StatelessWidget {
//Widget
 Expanded buildPanel(Color col,String sound_name)
  {
return Expanded(
  child: FlatButton(color: col,
  onPressed: (){
    var aud=new AudioCache();
    aud.play(sound_name);
  },),
);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
        crossAxisAlignment:CrossAxisAlignment.stretch
        ,children: [
          buildPanel(Colors.red, "audios/note1.wav"),
          buildPanel(Colors.orange, "audios/note2.wav"),
          buildPanel(Colors.yellow, "audios/note3.wav"),
          buildPanel(Colors.green, "audios/note4.wav"),
          buildPanel(Colors.teal, "audios/note5.wav"),
          buildPanel(Colors.blue, "audios/note6.wav"),
          buildPanel(Colors.purple, "audios/note7.wav"),
        ],),
      ),
    );
  }
}
