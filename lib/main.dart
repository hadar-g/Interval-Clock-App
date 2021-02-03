import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'dart:async';

import './worktime.dart';
import './offtime.dart';
import './Label_Container.dart';
import './timerCircle.dart';
import './workoutLabelContainer.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TimerApp(),
    ));

class TimerApp extends StatefulWidget {
  @override
  _TimerState createState() => _TimerState();
}

class _TimerState extends State<TimerApp> {
  double percent = 1.00;
  static int timeInMinute = 10;
  int labelMinute = 10;
  int secDisplay = 0;

  var activitiesArray = ["Push Ups", "Arm Stretch", "Leg Stretch"];
  int currentIndex = 0;

  Timer timer;

  onButtonPressed() {
    print("printing from the parent");
    int totalTime = timeInMinute;
    int timeLeft = totalTime * 60;
    int totalTimeInSeconds = labelMinute * 60;

    timer = Timer.periodic(
      Duration(seconds: 1),
      (timer) {
        setState(() {
          if (timeLeft > 0) {
            if (secDisplay == 0) {
              timeInMinute--;
              secDisplay = 60;
            }
            secDisplay--;
            percent =
                ((timeLeft / totalTimeInSeconds) * 100).round().toDouble() /
                    100;
            timeLeft--;
          } else {
            timeInMinute = totalTime;
            percent = 1;
            timer.cancel();

            currentIndex = (currentIndex + 1) % 3;
          }
        });
      },
    );
  }

  final double timerContainerHeight = 350.0;
  final double titleFontSize = 35.0;
  final double labelContainerSize = 200.0;
  final double workoutContainerSize = 200.0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
            color: Colors.black,
            width: double.infinity,
            height: double.infinity,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 10.0),
                    child: Text(
                      "Interval Timer",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: titleFontSize,
                      ),
                    ),
                  ),
                  timerCircle(
                      timeInMinute, secDisplay, percent, timerContainerHeight),
                  Label_Container(
                      labelContainerSize, onButtonPressed, labelMinute),
                  //  ),
                  SizedBox(height: 20.0),
                  workoutLabelContainer(
                      workoutContainerSize, activitiesArray[currentIndex]),
                ])),
      ),
    );
  }
}
