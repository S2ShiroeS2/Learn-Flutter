import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark,
  ));
  return runApp(MyApp());
}

//Khai báo mã màu
Color colorPink = Color.fromRGBO(217, 108, 157, 1.0);
Color colorPurple = Color.fromRGBO(132, 61, 179, 1.0);
Color colorDarkPurple = Color.fromRGBO(19, 2, 38, 1.0);
Color colorBlue = Color.fromRGBO(143, 146, 181, 1.0);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData(
        fontFamily: 'Quicksand',
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorBlue,
      //Create button add
      floatingActionButton: FloatingActionButton(
        onPressed: () => {},
        backgroundColor: Colors.white,
        child: Icon(
          Icons.add,
          color: Colors.black,
        ),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            TopPart(), //Heading
            PinkPart(),
            LightPurple(),
            DarkPurple(),
          ],
        ),
      ),
    );
  }
}

//Heading page
class TopPart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.0,
      color: colorPink,
      child: Material(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(60.0),
        ),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 40.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment
                  .spaceEvenly, //Canh đều theo kích cở chiều rộng của màn hình
              children: <Widget>[
                Column(
                  children: <Widget>[
                    CircleAvatar(
                      radius: 25.0,
                      backgroundImage: ExactAssetImage('assets/pic-01.jpg'),
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    Text(
                      "YOU",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.pink),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.trending_up,
                          size: 28.0,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    Text(
                      "TRENDING",
                      style: TextStyle(),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.grey),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(9.0),
                        child: Icon(
                          Icons.favorite_border,
                          size: 28.0,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    Text(
                      "HEALTH",
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w500,
                        fontSize: 12.0,
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class PinkPart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160.0,
      color: colorPurple,
      child: Material(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(60.0),
        ),
        color: colorPink,
        child: Row(
          children: <Widget>[
            SizedBox(
              width: 30.0,
            ),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    "TODAY 05:30 PM",
                    style: TextStyle(
                      fontSize: 12.0,
                      color: Colors.white70,
                    ),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Text(
                    "Yoga and Meditation for Beginners",
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        width: 70.0,
                        child: Stack(
                          children: <Widget>[
                            Positioned(
                              left: 15.0,
                              child: Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    width: 3.0,
                                    color: Colors.white,
                                  ),
                                ),
                                child: CircleAvatar(
                                  radius: 17.0,
                                  backgroundImage:
                                      ExactAssetImage('assets/pic-02.jpg'),
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  width: 3.0,
                                  color: Colors.white,
                                ),
                              ),
                              child: CircleAvatar(
                                radius: 17.0,
                                backgroundImage:
                                    ExactAssetImage('assets/pic-03.jpg'),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 1.0,
                      ),
                      Text(
                        "join Marie, John & 10 others",
                        style: TextStyle(
                          fontSize: 15.0,
                          fontStyle: FontStyle.italic,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LightPurple extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160.0,
      color: colorDarkPurple,
      child: Material(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(60.0),
        ),
        color: colorPurple,
        child: Row(
          children: <Widget>[
            SizedBox(
              width: 30.0,
            ),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    "TUESDAY 05:30 PM",
                    style: TextStyle(
                      fontSize: 12.0,
                      color: Colors.white70,
                    ),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Text(
                    "Practice French, English And Chinese",
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        width: 70.0,
                        child: Stack(
                          children: <Widget>[
                            Positioned(
                              left: 15.0,
                              child: Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    width: 3.0,
                                    color: Colors.white,
                                  ),
                                ),
                                child: CircleAvatar(
                                  radius: 17.0,
                                  backgroundImage:
                                      ExactAssetImage('assets/pic-04.jpg'),
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  width: 3.0,
                                  color: Colors.white,
                                ),
                              ),
                              child: CircleAvatar(
                                radius: 17.0,
                                backgroundImage:
                                    ExactAssetImage('assets/pic-05.jpg'),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 1.0,
                      ),
                      Text(
                        "join Ryan, Bob & 12 others",
                        style: TextStyle(
                          fontSize: 15.0,
                          fontStyle: FontStyle.italic,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DarkPurple extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160.0,
      color: colorBlue,
      child: Material(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(60.0),
        ),
        color: colorDarkPurple,
        child: Row(
          children: <Widget>[
            SizedBox(
              width: 30.0,
            ),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    "FRIDAY 06:00 PM",
                    style: TextStyle(
                      fontSize: 12.0,
                      color: Colors.white70,
                    ),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Text(
                    "Adobe XD Live Event in Europe",
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        width: 70.0,
                        child: Stack(
                          children: <Widget>[
                            Positioned(
                              left: 15.0,
                              child: Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    width: 3.0,
                                    color: Colors.white,
                                  ),
                                ),
                                child: CircleAvatar(
                                  radius: 17.0,
                                  backgroundImage:
                                      ExactAssetImage('assets/pic-06.jpg'),
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  width: 3.0,
                                  color: Colors.white,
                                ),
                              ),
                              child: CircleAvatar(
                                radius: 17.0,
                                backgroundImage:
                                    ExactAssetImage('assets/pic-07.jpg'),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 1.0,
                      ),
                      Text(
                        "join Alice, Tom & 22 others",
                        style: TextStyle(
                          fontSize: 15.0,
                          fontStyle: FontStyle.italic,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
