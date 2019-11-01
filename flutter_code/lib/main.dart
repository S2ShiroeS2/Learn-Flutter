import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
    title: 'learn widget',
    home: MyScaffold(),
));

//Build my AppBar
class MyAppBar extends StatelessWidget {
  MyAppBar({this.title});
  final Widget title;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 56.0,
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      decoration: BoxDecoration(color: Colors.blue),
      child: Row(
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.menu),
            tooltip: 'Navigation menu bar',
            onPressed: () => {},
          ),
          Expanded(
            child: title,
          ),
          IconButton(
            icon: Icon(Icons.search),
            tooltip: 'Search',
            onPressed: () => {},
          ),
        ],
      ),
    );
  }
}

class MyScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Material(
      child: Column(
        children: <Widget>[
          MyAppBar(
            title: Text(
              'test navigation bar',
              style: Theme.of(context).primaryTextTheme.title,
            ),
          ),
          Expanded(
            child: Center(
              child: Text('Hello world'),
            ),
          )
        ],
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Hello! learning flutter!', textDirection: TextDirection.ltr),
    );
  }
}
