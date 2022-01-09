

import 'package:flutter/material.dart';

class Info extends StatelessWidget {
  const Info({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: InfoDetails());
  }
}

class InfoDetails extends StatefulWidget {
  const InfoDetails({Key key}) : super(key: key);

  @override
  _InfoDetailsState createState() => _InfoDetailsState();
}

class _InfoDetailsState extends State<InfoDetails> {
  DateTime _dateTime;
  DateTime _dateTime2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Please enter your information',
            style: Theme.of(context).textTheme.headline6),
      ),
      body: Container(
        child: Container(
          child: Column(
            children: [
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: ElevatedButton(
                        child: Text('Select date Check In'),
                        onPressed: () {
                          showDatePicker(
                                  context: context,
                                  initialDate: _dateTime == null
                                      ? DateTime.now()
                                      : _dateTime,
                                  firstDate: DateTime(2021),
                                  lastDate: DateTime(2023))
                              .then((date) {
                            setState(() {
                              _dateTime = date;
                            });
                          });
                        },
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(_dateTime == null
                          ? 'Nothing has been picked yet'
                          : _dateTime.toString()),
                    ),
                  ]
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: ElevatedButton(
                        child: Text('Select date Check Out'),
                        onPressed: () {
                          showDatePicker(
                                  context: context,
                                  initialDate: _dateTime2 == null
                                      ? DateTime.now()
                                      : _dateTime2,
                                  firstDate: DateTime(2021),
                                  lastDate: DateTime(2023))
                              .then((date) {
                            setState(() {
                              _dateTime2 = date;
                            });
                          });
                        },
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(_dateTime2 == null
                          ? 'Nothing has been picked yet'
                          : _dateTime2.toString()),
                    ),
                  ]),
              TextFormField(

                decoration: InputDecoration(
                    icon: Icon(Icons.person),
                    hintText: "Please input your name",
                    border: OutlineInputBorder(),
                    labelText: " Your Name"),
              ),
              SizedBox(height: 25,),
              TextFormField(

                decoration: InputDecoration(
                    icon: Icon(Icons.call),
                    border: OutlineInputBorder(),
                    hintText: "Please input your phone number",
                    labelText: " Your phone number"),
              ),
              SizedBox(height: 5,),
              Text('Number of guests'),  SizedBox(height: 5,),
              TextFormField(

                decoration: InputDecoration(
                    icon: Icon(Icons.person),
                  border: OutlineInputBorder(),

              )),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: ElevatedButton(
                        child: Text('BOOK'),
                        onPressed: () {

                        },
                      ),
                    ),

                  ]
              ),
            ],
          ),

        ),

      ),
    );
  }
}
