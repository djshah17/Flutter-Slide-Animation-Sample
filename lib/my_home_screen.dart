import 'package:flutter/material.dart';
import 'package:flutterslideanimationsample/my_slide_left_transition.dart';
import 'my_animated_ui.dart';
import 'my_slide_bottom_transition.dart';
import 'my_slide_right_transition.dart';
import 'my_slide_top_transition.dart';

class MyHomeScreen extends StatefulWidget {
  @override
  _MyHomeScreenState createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Flutter Slide Transition Sample')),
      body: Container(
        margin: EdgeInsets.all(25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            ElevatedButton(
              child: Text('Left Slide Transition',style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
              style: ElevatedButton.styleFrom(
                  primary: Colors.lightGreenAccent,
                  padding: EdgeInsets.all(15)
              ),
              onPressed: () {
                Navigator.of(context).push(MySlideLeftTransition(widget: MyAnimatedUI()));
              },
            ),
            SizedBox(height: 30),
            ElevatedButton(
              child: Text('Right Slide Transition',style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
              style: ElevatedButton.styleFrom(
                  primary: Colors.purpleAccent,
                  padding: EdgeInsets.all(15)
              ),
              onPressed: () {
                Navigator.of(context).push(MySlideRightTransition(widget: MyAnimatedUI()));
              },
            ),
            SizedBox(height: 30),
            ElevatedButton(
                child: Text('Top Slide Transition',style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                style: ElevatedButton.styleFrom(
                  primary: Colors.amberAccent,
                  padding: EdgeInsets.all(15),
                ),
                onPressed: () {
                  Navigator.of(context).push(MySlideTopTransition(widget: MyAnimatedUI()));
                }),
            SizedBox(height: 30),
            ElevatedButton(
              child: Text('Bottom Slide Transition',style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
              style: ElevatedButton.styleFrom(
                primary: Colors.deepOrangeAccent,
                padding: EdgeInsets.all(15),
              ),
              onPressed: () {
                Navigator.of(context).push(MySlideBottomTransition(widget: MyAnimatedUI()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
