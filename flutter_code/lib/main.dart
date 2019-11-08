import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(statusBarColor: Colors.transparent),
  );
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Quicksand',
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: <Widget>[
              CustomMadeClipper(),
              Positioned(
                top: 25.0,
                left: 0.0,
                right: 0.0,
                child: Container(
                  child: Column(
                    children: <Widget>[
                      //Row my saving
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          IconButton(
                            icon: Icon(Icons.arrow_back_ios),
                            iconSize: 24,
                            color: Colors.white,
                            onPressed: () => {},
                          ),
                          Center(
                            child: Text(
                              'My Saving',
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.normal,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 40.0,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      //balance
                      Container(
                        width: MediaQuery.of(context).size.width * 0.85,
                        decoration: BoxDecoration(
                          color: Colors.white30,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment
                              .spaceBetween, //Set vị trí cho các phần tủ bên trong
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(left: 16.0),
                              child: Text(
                                'Balance',
                                style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Text(
                              'INR 10,000.00',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            IconButton(
                                icon: Icon(Icons.arrow_forward),
                                color: Colors.white,
                                onPressed: () => {}),
                          ],
                        ),
                      ),
                      //Account details
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        'Account details 0388-149-628',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 25.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          //Column left
                          Column(
                            children: <Widget>[
                              Text(
                                'Interest Rate',
                                style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  color: Colors.white,
                                ),
                              ),
                              Row(
                                children: <Widget>[
                                  Text(
                                    '6.5%',
                                    style: TextStyle(
                                      fontSize: 25.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8.0),
                                    child: Text(
                                      '/year',
                                      style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 50.0,
                          ),
                          //Column Right
                          Column(
                            children: <Widget>[
                              Text(
                                'Your Interest',
                                style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                'INR 150.000',
                                style: TextStyle(
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      //Row Card
                      SizedBox(
                        height: 14.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Card(
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    width: 30.0,
                                    child: Image.asset(
                                        'assets/images/piggy-bank.png'),
                                  ),
                                  SizedBox(
                                    height: 5.0,
                                  ),
                                  Text(
                                    'Add Fund',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Card(
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    width: 30.0,
                                    child: Image.asset('assets/images/atm.png'),
                                  ),
                                  SizedBox(
                                    height: 5.0,
                                  ),
                                  Text(
                                    'Add Fund',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Card(
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    width: 30.0,
                                    child: Image.asset('assets/images/up.png'),
                                  ),
                                  SizedBox(
                                    height: 5.0,
                                  ),
                                  Text(
                                    'Add Fund',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      //Row Goals
                      SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        children: <Widget>[
                          SizedBox(
                            width: 35.0,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'My Goals',
                                style: TextStyle(
                                  fontSize: 22.0,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width * 0.8,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(25.0),
                                  child: Image.asset(
                                    'assets/images/lyson.png',
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                'Ly son trip',
                                style: TextStyle(
                                  fontSize: 22.0,
                                  color: Colors.black87,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                "Let's save for family trip 2020",
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.black87,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 35.0, right: 35.0),
                        child: MaterialButton(
                          onPressed: () => {},
                          color: colorMix_03,
                          height: 40.0,
                          minWidth: MediaQuery.of(context).size.width * 0.8,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                'INR 10,000,0000',
                                style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Icon(Icons.arrow_forward),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/** Khai báo màu */
Color colorMix_01 = Color.fromRGBO(150, 127, 239, 1.0);
Color colorMix_02 = Color.fromRGBO(133, 120, 236, 1.0);
Color colorMix_03 = Color.fromRGBO(235, 195, 108, 1.0);

/** Tạo nền theo các kiểu */
class CustomMadeClipper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      child: Container(
        height: 300,
        width: MediaQuery.of(context).size.width,
        //Edit color
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [colorMix_01, colorMix_02]),
        ),
      ),
      clipper: CustomBlueClipper(),
    );
  }
}

class CustomBlueClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, size.height - 80);

    var firstControlPoint = Offset(size.width * 0.02, size.height - 34);
    var fistEndPoint = Offset(size.width / 2, size.height - 34);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        fistEndPoint.dx, fistEndPoint.dy);

    var secondControlPoint = Offset(size.width * 0.98, size.height - 34);
    var secondEndPoint = Offset(size.width, size.height - 80);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);

    path.lineTo(size.width, size.height - 80);
    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
