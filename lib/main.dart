import 'package:flutter/material.dart';
import 'game.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child:Title("hus", HitType.hit)
          ),
        appBar: AppBar(
          title: Align(
            alignment: Alignment.centerLeft,
            child: Text("Bridle")),
        )
          )
    
    );
  }
}

class Title extends StatelessWidget {
  const Title(this.letter, this.hitType, {super.key});
  final String letter;
  final HitType hitType;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        border: Border.all(
          color:Colors.grey.shade300
      ),
      color: switch(hitType){
        HitType.hit => Colors.green,
        HitType.miss => Colors.grey,
        HitType.partial => Colors.yellow,
        _=> Colors.white 
      }
    ),
    child: Center(child: Text(letter),)
    );
  }
}