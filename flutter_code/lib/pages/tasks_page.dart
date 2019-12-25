import 'package:flutter/material.dart';

class TaskPage extends StatefulWidget {
  @override
  _TaskPageState createState() => _TaskPageState();
}

//Create Task object
class Task {
  final String task;
  final bool isFinish;
  const Task(this.task, this.isFinish);
}

//Defind list Task
final List<Task> _taskList = [
  new Task('Call Tom about appointment', false),
  new Task('Fix on boarding experience', false),
  new Task('Edit API documentation', false),
  new Task('Set up user focus groups', false),
  new Task('Have coffee with Sam', true),
  new Task('Meet with Sales', true),
];

class _TaskPageState extends State<TaskPage> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _taskList.length,
      itemBuilder: (context, index) {
        return _taskList[index].isFinish
            ? _tasksComplete(_taskList[index].task)
            : _tasksUncomplete(_taskList[index].task);
      },
    );
  }

  Widget _tasksUncomplete(String task) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, bottom: 20.0),
      child: Row(
        children: <Widget>[
          new Flexible(
            child: new Icon(
              Icons.radio_button_unchecked,
              color: Theme.of(context).accentColor,
              size: 20,
            ),
          ),
          SizedBox(
            width: 20.0,
          ),
          Text(task),
        ],
      ),
    );
  }

  Widget _tasksComplete(String task) {
    //Overlay at complete task
    return Container(
      foregroundDecoration: BoxDecoration(
        color: Color(0x60FDFDFD),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0, top: 20.0),
        child: Row(
          children: <Widget>[
            new Flexible(
              child: new Icon(
                Icons.radio_button_checked,
                color: Theme.of(context).accentColor,
                size: 20,
              ),
            ),
            SizedBox(
              width: 20.0,
            ),
            Text(task),
          ],
        ),
      ),
    );
  }
}
