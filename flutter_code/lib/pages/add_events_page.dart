import 'package:flutter/material.dart';
import 'package:flutter_code/widgets/custom_button.dart';

class AddEventPage extends StatefulWidget {
  @override
  _AddEventPageState createState() => _AddEventPageState();
}

class _AddEventPageState extends State<AddEventPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Center(
            child: Text(
              "Add new event",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12.0),
              ),
              labelText: 'Enter event name',
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          _actionButton(context),
        ],
      ),
    );
  }
  Widget _actionButton(BuildContext context) {
    return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            CustomButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              buttonText: "Close",
              borderColor: Theme.of(context).accentColor,
            ),
            CustomButton(
              onPressed: () {},
              buttonText: "Save",
              color: Theme.of(context).accentColor,
              textColor: Colors.white,
            ),
          ],
        );
  }
}