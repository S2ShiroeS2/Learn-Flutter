import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        final wordPair = WordPair.random();
        return MaterialApp(
            title: 'Flutter - Demo',
            theme: ThemeData(
                primarySwatch: Colors.blue,
            ),
            home: Scaffold(
                appBar: AppBar(
                    title: Text("Welcome to flutter"),
                ),
                body: Center(
                    child: Text(wordPair.asUpperCase),
                ),
            ),
        );
    }
}
