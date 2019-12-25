import 'package:flutter/material.dart';
import 'package:flutter_code/pages/events_page.dart';
import 'package:flutter_code/pages/tasks_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
        fontFamily: 'Poppins',
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: 24,
            color: Theme.of(context).accentColor,
          ),
          Positioned(
            right: 0,
            child: Text(
              "13",
              style: TextStyle(
                color: Color(0x10000000),
                fontSize: 150,
              ),
            ),
          ),
          _mainContent(context),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {},
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation
          .centerDocked, //button add position center
      bottomNavigationBar: BottomAppBar(
        shape:
            CircularNotchedRectangle(), //Tạo một viền lõm theo đối tượng bên ngoài
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Flexible(
              child: IconButton(
                onPressed: () => {},
                icon: Icon(Icons.settings),
              ),
            ),
            Flexible(
              child: IconButton(
                onPressed: () => {},
                icon: Icon(Icons.more_vert),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Column _mainContent(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(
          height: 60,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Friday",
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(26.0),
          child: _button(context),
        ),
        //Tasks List
        Expanded(
          child: EventPage(),
        ),
      ],
    );
  }

//Widget button tự định nghĩa
  Widget _button(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: MaterialButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            padding: const EdgeInsets.all(14.0),
            color: Theme.of(context).accentColor,
            textColor: Colors.white,
            onPressed: () => {},
            child: Text("Tasks"),
          ),
        ),
        SizedBox(
          width: 32.0,
        ),
        Expanded(
          child: MaterialButton(
            shape: RoundedRectangleBorder(
              //Border for button
              side: BorderSide(
                color: Theme.of(context).accentColor,
              ),
              borderRadius: BorderRadius.circular(12),
            ),
            padding: const EdgeInsets.all(14.0),
            color: Colors.white,
            textColor: Theme.of(context).accentColor,
            onPressed: () => {},
            child: Text("Events"),
          ),
        ),
      ],
    );
  }
}
