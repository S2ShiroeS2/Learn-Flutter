import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      title: "Flutter Tutorial",
      home: TutorialHome(),
    ));

class TutorialHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //App bar of widgets Scaffold
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          tooltip: "Navigation menu",
          onPressed: () => {},
        ),
        title: Center(
          child: Text("Hello world"),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            tooltip: "Search",
            onPressed: () => {},
          ),
        ],
      ),
      //Body of scaffold
      body: Center(
        child: Text("Trần dần :v"),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: "Add",
        child: Icon(Icons.add),
        onPressed: () => {},
      ),
    );
  }
}
