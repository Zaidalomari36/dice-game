import 'dart:math';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
class Dice_game extends StatefulWidget {

  @override
  _Dice_gameState createState() => _Dice_gameState();
}

class _Dice_gameState extends State<Dice_game> {
  var left_btn=1;
  var right_btn=1;
var win=0;
var lose=0;
static int aud_num=1;
  var res="";

  void change()
  {
    setState(() {
      left_btn=Random().nextInt(6)+1;
      right_btn=Random().nextInt(6)+1;
      var audio=new AudioCache();
      if(left_btn==right_btn)
        {
          res="YOU ARE LUCKY";

          win++;
          if (aud_num < 8) {
            audio.play("note$aud_num.wav");
            aud_num++;
          }
          else {
            audio.play("note$aud_num.wav");
            aud_num = 1;
          }

        }
      else {
        res = "HARD lUCK !!";

        lose++;
        if (aud_num < 8) {
          audio.play("note$aud_num.wav");
          aud_num++;
        }
      else {
          audio.play("note$aud_num.wav");
          aud_num = 1;
        }  }

    });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE9E0BF),
      appBar:AppBar(backgroundColor:Color(0xFFE9E0BF),
        title:Text("Dice Game",style: TextStyle(fontFamily:'Italianno',color: Color(0xFF33495E),
            fontWeight:FontWeight.bold,fontSize: 45),),) ,
      body:Center(
child: Column(
  children: [
  Padding(
    padding: const EdgeInsets.only(top:8.0),
    child: Text("FIND   OUT   YOUR   LUCK !!",style: TextStyle(fontSize:28,fontFamily:'MateSC',
        fontWeight:FontWeight.w900,color: Color(0xFF33495E)),),
  ),
    SizedBox(height: 20,),
    Row(children: [
      // ignore: deprecated_member_use
      Expanded(child: FlatButton(child: Image(image: AssetImage("images/img$left_btn.png")), onPressed:(){change();},),),
      // ignore: deprecated_member_use
      Expanded(child: FlatButton(child: Image(image: AssetImage("images/img$right_btn.png"),), onPressed:(){change();},),),
    ],),
  SizedBox(height: 50,),
    Text("$res",style: TextStyle(fontSize: 40,color: Color(0xFF33495E)),),
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 60),
      child: Card(color: Color(0xFF33495E),
        child: Column(
        children: [
          Row(
            children: [
              Icon(Icons.check_circle/*not_interested_sharp*/,color:Colors.greenAccent,size: 30,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Win : $win",style: TextStyle(color:Color(0xFFFEF9E7),fontSize: 25),),
              )
            ],
          ),
          Row(
            children: [
              Icon(Icons.not_interested_sharp,color:Colors.red,size: 30,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Lose : $lose",style: TextStyle(color:Color(0xFFE9E0BF),fontSize: 25),),
              )
            ],
          )
        ],
      ),),
    )
  ]),) ,);}}

