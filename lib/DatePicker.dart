
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class MyApp2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DatePicker(),
    );
  }
}

class DatePicker extends StatefulWidget {
  const DatePicker({Key key}) : super(key: key);

  @override
  _DatePickerState createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {
  DateTime _dateTime;
  DateTime _dateTime2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Please enter your information"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text(_dateTime == null
                ? 'Nothing has been picked yet'
                : _dateTime.toString()),
            ElevatedButton(
              child: Text('Check In'),
              onPressed: () {
                showDatePicker(
                        context: context,
                        initialDate:
                            _dateTime == null ? DateTime.now() : _dateTime,
                        firstDate: DateTime(2021),
                        lastDate: DateTime(2023))
                    .then((date) {
                  setState(() {
                    _dateTime = date;
                  });
                });
              },
            ),
            Text(_dateTime2 == null
                ? 'Nothing has been picked yet'
                : _dateTime2.toString()),
            ElevatedButton(
              child: Text('Check Out'),
              onPressed: () {
                showDatePicker(
                        context: context,
                        initialDate:
                            _dateTime2 == null ? DateTime.now() : _dateTime2,
                        firstDate: DateTime(2021),
                        lastDate: DateTime(2023))
                    .then((date) {
                  setState(() {
                    _dateTime2 = date;
                  });
                });
              },
            )
    ],
        ),
      ),
    );
  }
}

