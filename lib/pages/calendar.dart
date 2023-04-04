import 'dart:async';

import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:intl/intl.dart';

class Calendar extends StatefulWidget {
  const Calendar({Key? key}) : super(key: key);

  @override
  State<Calendar> createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  String _time = '';
  String _zone = 'WIB';

  @override
  void initState() {
    _time = DateFormat('MM/dd/yyy hh:mm:ss').format(DateTime.now());
    Timer.periodic(Duration(seconds: 1), (Timer time) => _getTime());
    super.initState();
  }

  void _getTime() {
    final utc = DateTime.now().toUtc();
    final localTime = utc.add(_getOffset(_zone));
    final formatDateTime =
        DateFormat('EEEE, MM/dd/yyy hh:mm:ss').format(localTime);
    if (this.mounted) {
      setState(() {
        _time = formatDateTime;
      });
    }
  }

  Duration _getOffset(String zone) {
    if (zone == 'WIB') {
      return Duration(hours: 7);
    }

    if (zone == 'WITA') {
      return Duration(hours: 8);
    }

    return Duration(hours: 9);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Calendar",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 25),
              Text("Select zone :"),
              Row(
                children: [
                  ElevatedButton(
                      onPressed: _zone == 'WIB'
                          ? null
                          : () {
                              setState(() {
                                _zone = 'WIB';
                              });
                            },
                      child: Text('WIB')),
                  SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(
                      onPressed: _zone == 'WITA'
                          ? null
                          : () {
                              setState(() {
                                _zone = 'WITA';
                              });
                            },
                      child: Text('WITA')),
                  SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(
                    onPressed: _zone == 'WIT'
                        ? null
                        : () {
                            setState(() {
                              _zone = 'WIT';
                            });
                          },
                    child: Text('WIT'),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Text(
                '${_time} ${_zone}',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 25),
              Container(
                padding: EdgeInsets.all(10),
                width: MediaQuery.of(context).size.width,
                height: 350,
                child: SfCalendar(view: CalendarView.month),
                decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(8)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
