import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Welcome to Flutter",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Example for StatefulWidget"),
        ),
        body: Center(
          child: RandomWords(),
        ),
      ),
    );
  }
}

class RandomWords extends StatefulWidget {
  @override
  RandomWordsState createState() => new RandomWordsState();
}

class RandomWordsState extends State<RandomWords> {
  final _word = <WordPair>[]; //Mảng các từ với kiểu thể hiện của nó là WordPair
  @override
  Widget build(BuildContext context) {
    //final words = WordPair.random();
    return ListView.builder(
      itemBuilder: (context, index) {
        //context: Ngữ cảnh, index: vị trí của phầntử
        //Trả về một row của listview
        if (index >= _word.length) {
          //Nếu giá trị index đến cuối cùng thì add thêm nhiều phần tử
          //Mỡi lần kéo xuống sẽ add thêm 10 từ vào listview
          _word.addAll(generateWordPairs().take(
              10)); // dùng generateWordPairs để add vào thêm mảng 10 từ nữa.
        }
        return _buildRow(_word[index]);
      },
    );
  }

  Widget _buildRow(WordPair word) {
    return ListTile(
      title: Text(
        word.asPascalCase,
        style: const TextStyle(fontSize: 18.0),
      ),
    );
  }
}
