import 'package:flutter/material.dart';

class EventPage extends StatefulWidget {
  @override
  _EventPageState createState() => _EventPageState();
}

//Create object for Event
class Event {
  final String time;
  final String task;
  final String desc;
  final bool isFinish;

  Event(this.time, this.task, this.desc, this.isFinish);
}

final List<Event> _eventList = [
  new Event("08:00", "Coffee with Sam", "Personal", true),
  new Event("10:00", "Meet with Sales", "Work", true),
  new Event("12:00", "Edit API documentation about SSO", "Work", false),
  new Event("18:00", "Go to Gym", "Personal", false),
];

class _EventPageState extends State<EventPage> {
  @override
  Widget build(BuildContext context) {
    double iconSize = 20;
    return ListView.builder(
      itemCount: _eventList.length,
      padding: const EdgeInsets.all(0),
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(left: 24.0, right: 24.0),
          child: Row(
            children: <Widget>[
              Container(
                decoration: IconDecoration(
                  iconSize: iconSize,
                  lineWidth: 1,
                  firstData: index == 0 ?? true,
                  lastData: index == _eventList.length - 1 ?? true,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 3),
                        color: Color(0x20000000),
                        blurRadius: 5,
                      ),
                    ],
                  ),
                  child: Icon(
                    _eventList[index].isFinish ? Icons.fiber_manual_record : Icons.radio_button_unchecked,
                    size: 20.0,
                    color: Theme.of(context).accentColor,
                  ),
                ),
              ),
              Container(
                width: 70,
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(_eventList[index].time),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                  child: Container(
                    padding: const EdgeInsets.all(14.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x20000000),
                          blurRadius: 5, //Đổ bóng
                          offset: Offset(0, 3),
                        )
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(_eventList[index].task),
                        SizedBox(
                          height: 12.0,
                        ),
                        Text(_eventList[index].desc),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

//Drawn line
class IconDecoration extends Decoration {
  final double iconSize;
  final double lineWidth;
  final bool firstData;
  final bool lastData;

  IconDecoration({
    @required double iconSize,
    @required double lineWidth,
    @required bool firstData,
    @required bool lastData,
  }) : this.iconSize = iconSize,
  this.lineWidth = lineWidth,
  this.firstData = firstData,
  this.lastData = lastData;
  
  @override
  BoxPainter createBoxPainter([onChanged]) {
    return IconLine(
      iconSize: iconSize,
      lineWidth: lineWidth,
      firstData: firstData,
      lastData: lastData,
    );
  }
}

class IconLine extends BoxPainter {
  final double iconSize;
  final bool firstData;
  final bool lastData;
  final Paint paintLine;

  IconLine({
    @required double iconSize,
    @required double lineWidth,
    @required bool firstData,
    @required bool lastData,
  }) : this.iconSize = iconSize,
  this.firstData = firstData,
  this.lastData = lastData,
  paintLine = Paint()
  ..color = Colors.red
  ..strokeCap = StrokeCap.round
  ..strokeWidth = lineWidth
  ..style = PaintingStyle.stroke;
  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    //define position to draw line
    final leftOffset = Offset((iconSize / 2) + 24.0, offset.dy);
    final double iconSpace = iconSize / 2.7;

    final Offset top = configuration.size.topLeft(Offset(leftOffset.dx, 0.0));
    final Offset centerTop = configuration.size.centerLeft(Offset(leftOffset.dx, leftOffset.dy - 7.5));
    if(!firstData) {
      canvas.drawLine(top, centerTop, paintLine);
    }
    //bottomline
    final centerBottom = configuration.size.centerLeft(Offset(leftOffset.dx, leftOffset.dy + iconSpace));
    final bottom = configuration.size.bottomLeft(Offset(leftOffset.dx, leftOffset.dy * 2));
    if(!lastData) {
      canvas.drawLine(centerBottom, bottom, paintLine);
    }
  }
}