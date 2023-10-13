import 'dart:math';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    DashatarApp(),
  );
}

class DashatarApp extends StatefulWidget {
  const DashatarApp({
    super.key,
  });

  @override
  State<DashatarApp> createState() => _DashatarAppState();
}

class _DashatarAppState extends State<DashatarApp> {
  int appbarCount = 0;
  int scaffoldCount = 0;
  List sounds = ['Kick.wav', 'Snare.wav', 'Tom.wav', 'Ride.wav'];
  int soundPosition = 0;
  final player = AudioPlayer();
  List<Color> colors = [
    Colors.yellow,
    Colors.teal,
    Colors.green,
    Colors.blue,
    Colors.deepPurple,
    Colors.pinkAccent
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.deepPurple,
        appBar: AppBar(
          backgroundColor: colors[appbarCount],
          centerTitle: true,
          title: IconButton(
            icon: Icon(
              Icons.refresh,
              color: Colors.brown,
            ),
            onPressed: () {
              soundPosition = Random().nextInt(4);
            },
          ),
        ),
        body: ListView(
          children: [
            Container(
              height: 100,
              width: 100,
              color: colors[scaffoldCount],
              child: MaterialButton(
                onPressed: () {
                  setState(() {
                    scaffoldCount = Random().nextInt(6);
                    appbarCount = Random().nextInt(6);
                    player.play(AssetSource(sounds[soundPosition]));
                  });
                },
                child: Image.asset(
                  'images/dashatar.png',
                ),
              ),
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.teal,
              child: Image.asset(
                'images/dashatar.png',
              ),
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.green,
              child: Image.asset(
                'images/dashatar.png',
              ),
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.blue,
              child: Image.asset(
                'images/dashatar.png',
              ),
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.yellow,
              child: Image.asset(
                'images/dashatar.png',
              ),
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.teal,
              child: Image.asset(
                'images/dashatar.png',
              ),
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.green,
              child: Image.asset(
                'images/dashatar.png',
              ),
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.blue,
              child: Image.asset(
                'images/dashatar.png',
              ),
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.yellow,
              child: Image.asset(
                'images/dashatar.png',
              ),
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.teal,
              child: Image.asset(
                'images/dashatar.png',
              ),
            ),
            Stack(children: [
              Container(
                height: 100,
                width: 100,
                color: Colors.green,
                child: Image.asset(
                  'images/dashatar.png',
                ),
              ),
              Positioned(
                left: 25,
                top: 25,
                child: Container(
                  height: 50,
                  width: 50,
                  color: Colors.blue,
                ),
              ),
            ])
          ],
        ),
      ),
    );
  }
}
