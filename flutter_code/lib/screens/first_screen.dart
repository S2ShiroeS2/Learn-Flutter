import 'package:flutter/material.dart';
import 'package:flutter_code/clock/clock.dart';

class FirstTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        SizedBox(
          height: 35,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 45),
          child: Clock(),
        ),
        SizedBox(
          height: 35,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "ALARM TIME",
                  style: TextStyle(
                    color: Color(0xffff0863),
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 1.3,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "06:12 PM",
                  style: TextStyle(
                    color: Color(0xff2d386b),
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "WAKE UP IN",
                  style: TextStyle(
                    color: Color(0xffff0863),
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 1.3,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "08:00 PM",
                  style: TextStyle(
                    color: Color(0xff2d386b),
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ],
        )
      ],
    );
  }
}
