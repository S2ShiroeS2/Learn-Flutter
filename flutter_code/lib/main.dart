import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print("Your button was Tapped");
      },
      child: Container(
        height: 10.0,
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
        margin:  const EdgeInsets.symmetric(horizontal: 50.0, vertical: 200.0),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(5.0), color: Colors.lightBlue[300]),
        child: Center(
          child: Text("Test Gesture", textDirection: TextDirection.ltr),
          
        ),
      ),
    );
  }
}
