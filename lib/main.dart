import 'package:flutter/material.dart';

void main() {
  runApp(
    DashatarApp(),
  );
}

class DashatarApp extends StatelessWidget {
  const DashatarApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<Text> a = [Text("Dash 1"), Text("Dash 2")];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.deepPurple,
        appBar: AppBar(
          backgroundColor: Color(0xFF000000),
          centerTitle: true,
          title: a[0],
        ),
        body: ListView(
          children: [
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
