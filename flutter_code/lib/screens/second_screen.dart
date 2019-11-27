import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/foundation/diagnostics.dart';
import 'package:flutter/src/rendering/custom_paint.dart';

class SecondTab extends StatelessWidget {
  final double _smallFontSize = 12;
  final double _valFontSize = 30;
  final FontWeight _smallFontWeight = FontWeight.w500;
  final FontWeight _valFontWeight = FontWeight.w700;
  final Color _fontColor = Color(0xff5b6990);
  final double _smallFontSpacing = 1.3;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 25),
      alignment: Alignment.topCenter,
      child: ListView(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "AVERAGE SLEEP",
                    style: TextStyle(
                      color: _fontColor,
                      fontSize: _smallFontSize,
                      fontWeight: _smallFontWeight,
                      letterSpacing: _smallFontSpacing,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "06:45 h",
                    style: TextStyle(
                      color: _fontColor,
                      fontSize: _valFontSize,
                      fontWeight: _valFontWeight,
                      letterSpacing: _smallFontSpacing,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "LAST RECORDED",
                    style: TextStyle(
                      color: _fontColor,
                      fontSize: _smallFontSize,
                      fontWeight: _smallFontWeight,
                      letterSpacing: _smallFontSpacing,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "07:05 h",
                    style: TextStyle(
                      color: _fontColor,
                      fontSize: _valFontSize,
                      fontWeight: _valFontWeight,
                      letterSpacing: _smallFontSpacing,
                    ),
                  ),
                ],
              ),
              Container(
                width: 180,
                height: 180,
                decoration: BoxDecoration(
                    color: Color(0xfff0f5fb),
                    border: Border.all(
                      color: Color(0xffd3e1ed),
                      width: 8,
                    ),
                    borderRadius: BorderRadius.circular(3.0)),
                padding: EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "THIS WEEK",
                      style: TextStyle(
                        color: _fontColor,
                        fontSize: _smallFontSize,
                        fontWeight: _valFontWeight,
                        letterSpacing: _smallFontSpacing,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      height: 100,
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      width: double.infinity,
                      child: CustomPaint(
                        foregroundPainter: GraphPainter(),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 25,
          ),
          new RecordItem(
              fontColor: _fontColor,
              valFontWeight: _valFontWeight,
              smallFontSpacing: _smallFontSpacing,
              day: "Thursday"),
          new RecordItem(
              fontColor: _fontColor,
              valFontWeight: _valFontWeight,
              smallFontSpacing: _smallFontSpacing,
              day: "Wednesday"),
          new RecordItem(
              fontColor: _fontColor,
              valFontWeight: _valFontWeight,
              smallFontSpacing: _smallFontSpacing,
              day: "Tuesday"),
          new RecordItem(
              fontColor: _fontColor,
              valFontWeight: _valFontWeight,
              smallFontSpacing: _smallFontSpacing,
              day: "Monday"),
          new RecordItem(
              fontColor: _fontColor,
              valFontWeight: _valFontWeight,
              smallFontSpacing: _smallFontSpacing,
              day: "Sunday"),
          new RecordItem(
              fontColor: _fontColor,
              valFontWeight: _valFontWeight,
              smallFontSpacing: _smallFontSpacing,
              day: "Staturday"),
        ],
      ),
    );
  }
}

class RecordItem extends StatelessWidget {
  const RecordItem({
    Key key,
    @required Color fontColor,
    @required FontWeight valFontWeight,
    @required double smallFontSpacing,
    @required String this.day,
  })  : _fontColor = fontColor,
        _valFontWeight = valFontWeight,
        _smallFontSpacing = smallFontSpacing,
        super(key: key);

  final Color _fontColor;
  final FontWeight _valFontWeight;
  final double _smallFontSpacing;
  final String day;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      //Create line
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Color(0xffddee9f7),
            width: 1.5,
          ),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            this.day,
            style: TextStyle(
              color: _fontColor,
              fontSize: 16,
              fontWeight: _valFontWeight,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: <Widget>[
              Text(
                "01/21/2019",
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                  letterSpacing: _smallFontSpacing,
                  color: _fontColor,
                ),
              ),
              SizedBox(
                width: 25.0,
              ),
              Expanded(
                child: Text(
                  "45.3 MINUTES",
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    letterSpacing: _smallFontSpacing,
                    color: _fontColor,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class GraphPainter extends CustomPainter {
  Paint trackBarPaint = Paint()
    ..color = Color(0xff818aab)
    ..style = PaintingStyle.stroke
    ..strokeCap = StrokeCap.round
    ..strokeWidth = 12;

  Paint trackPaint = Paint()
    ..color = Color(0xffdee6f1)
    ..style = PaintingStyle.stroke
    ..strokeCap = StrokeCap.round
    ..strokeWidth = 12;

  @override
  void paint(Canvas canvas, Size size) {
    Path trackPath = Path(); //Thanh nền của biểu đồ
    Path trackBarPath = Path(); //Thanh biểu đồ

    List val = [
      size.height * 0.8,
      size.height * 0.9,
      size.height * 0.7,
      size.height * 0.5,
      size.height * 0.6,
    ];

    double origin = 8;

    for (int i = 0; i < val.length; i++) {
      trackPath.moveTo(origin, size.height);
      trackPath.lineTo(origin, 0);

      trackBarPath.moveTo(origin, size.height);
      trackBarPath.lineTo(origin, val[i]);

      origin = origin + size.width * 0.22;

    }

    canvas.drawPath(trackPath, trackPaint);
    canvas.drawPath(trackBarPath, trackBarPaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return false;
  }
}
