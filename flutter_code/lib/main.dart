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
  final List<WordPair> _word = <WordPair>[]; //Mảng các từ với kiểu thể hiện của nó là WordPair
  final _setFont = const TextStyle(fontSize: 18.0);
  final Set<WordPair> _listFavourite = new Set<WordPair>(); //Không cho giá trị được duplicate
  @override
  Widget build(BuildContext context) {
    //final words = WordPair.random();
    return ListView.builder(
      itemBuilder: (context, index) {
        //context: Ngữ cảnh, index: vị trí của phầntử
        //Trả về một row của listview
        if (index.isOdd) {
          //Nếu index là số lẽ
          return Divider(); //một dấu gạch ngang
        }
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
    final bool favourite_Click =
        _listFavourite.contains(word); //Nếu list này chứa word thì đã lưu
    return ListTile(
        title: Text(
          word.asPascalCase,
          style: _setFont,
        ),
        trailing: new Icon(
          favourite_Click == true ? Icons.favorite : Icons.favorite_border,
          color: Colors.red,
        ),
        onTap: () {
          setState(() {
           if(favourite_Click) {
             _listFavourite.remove(word);
           }
           else {
             _listFavourite.add(word);
           }
          });
        }
      );
  }
}
