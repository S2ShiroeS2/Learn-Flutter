import 'package:flutter/material.dart';
import 'package:flutter_code/screens/first_screen.dart';
import 'package:flutter_code/screens/second_screen.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Clock',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new AppClock(),
    );
  }
}

class AppClock extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      width: double.infinity,
      //Tạo tab
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          bottomNavigationBar: BottomBar(),
          appBar: AppBar(
            elevation: 0.0,
            backgroundColor: Colors.transparent,
            bottom: PreferredSize(
              preferredSize:
                  Size.fromHeight(18.5), //Chiều rộng của navigation bar
              child: Container(
                color: Colors.transparent,
                child: SafeArea(
                  child: Column(
                    children: <Widget>[
                      TabBar(
                        //Phần line dưới
                        indicator: UnderlineTabIndicator(
                          borderSide: BorderSide(
                            color: Color(0xffff0863),
                            width: 3.0,
                          ),
                          insets: EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 0),
                        ),
                        //set style cho nội dung bên trong
                        indicatorWeight: 2,
                        labelColor: Color(0xff2d386b),
                        labelStyle: TextStyle(
                            fontSize: 12,
                            letterSpacing: 1.3,
                            fontWeight: FontWeight.w500),
                        unselectedLabelColor: Colors.black26,
                        tabs: <Widget>[
                          Tab(
                            text: "ALARMS",
                            icon: Icon(
                              Icons.watch_later,
                              size: 30,
                            ),
                          ),
                          Tab(
                            text: "RECORDS",
                            icon: Icon(
                              Icons.menu,
                              size: 30,
                            ),
                          ),
                          Tab(
                            text: "PROFILE",
                            icon: Icon(
                              Icons.supervised_user_circle,
                              size: 30,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              Center(
                child: FirstTab(),
              ),
              Center(
                child: SecondTab(),
              ),
              Text("Third Screen"),
            ],
          ),
        ),
      ),
    );
  }
}

class BottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(50, 0, 50, 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          FlatButton(
            child: Text(
              "EDIT ALARMS",
              style: TextStyle(
                letterSpacing: 1.5,
              ),
            ),
            color: Color(0xffff5e92),
            textColor: Colors.white,
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            onPressed: () => {},
          ),
          FloatingActionButton(
            child: Text(
              "+",
              style: TextStyle(
                color: Color(0xff253165),
                fontSize: 25,
                fontWeight: FontWeight.w700,
              ),
            ),
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
            elevation: 5,
            hoverElevation: 3,
            onPressed: ()=>{},
          )
        ],
      ),
    );
  }
}
