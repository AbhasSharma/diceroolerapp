




import 'dart:math';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
static AudioCache player = AudioCache();

var imagename = "IMG-20211025-WA0012.jpg";

playGame(){

  int random = Random().nextInt(6);

  switch (random) {
    case 1:
    imagename = "IMG-20211025-WA0012.jpg";
    player.play('RATTLE2.wav');
      break;
      case 2:
    imagename = "IMG-20211025-WA0013.jpg";
    player.play('RATTLE2.wav');
      break;
      case 3:
    imagename = "IMG-20211025-WA0014.jpg";
    player.play('RATTLE2.wav');
      break;
      case 4:
    imagename = "IMG-20211025-WA0015.jpg";
    player.play('RATTLE2.wav');
      break;
      case 5:
    imagename = "IMG-20211025-WA0016.jpg";
    player.play('RATTLE2.wav');
      break;
      case 6:
    imagename = "IMG-20211025-WA0017.jpg";
    player.play('RATTLE2.wav');
      break;
    default:
    imagename = "IMG-20211025-WA0012.jpg";
    }
    setState(() {
      imagename = imagename;
    });
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dice Roller"),
      ),
      body: Container(
          child: Center(
           
        child: InkWell(
          onTap: () {
            playGame();
             },
          child: Image.asset(
            "assets/$imagename",
            width: 200,
            height: 300,
          ),
        ),
      )),
    );
  }





}



