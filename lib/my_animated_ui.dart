import 'package:flutter/material.dart';

class MyAnimatedUI extends StatefulWidget {
  @override
  _MyAnimatedUIState createState() => _MyAnimatedUIState();
}

class _MyAnimatedUIState extends State<MyAnimatedUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network("https://resources.premierleague.com/premierleague/photos/players/250x250/p14937.png",width: 200,height: 200,scale: 0.1,),
            SizedBox(height: 50),
            Text("Cristiano Ronaldo", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Text("Forward", style: TextStyle(fontSize: 20)),
          ],
        )
      ),
    );
  }
}
