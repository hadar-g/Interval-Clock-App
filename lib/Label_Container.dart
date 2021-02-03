import 'package:flutter/material.dart';
import 'dart:async';

import './worktime.dart';
import './offtime.dart';

class Label_Container extends StatelessWidget {
  @override
  double labelContainerSize;
  final VoidCallback onButtonPressed;
  int workTimeDisplay;

  Label_Container(
      this.labelContainerSize, this.onButtonPressed, this.workTimeDisplay);

  Timer timer;

  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: labelContainerSize,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(50.0),
        ),
        child: Padding(
            padding: EdgeInsets.only(
                top: 20.0, left: 20.0, right: 20.0, bottom: 30.0),
            child: Column(
              children: <Widget>[
                Expanded(
                  child: Row(
                    children: <Widget>[
                      worktime(workTimeDisplay),
                      offtime(),
                    ],
                  ),
                ),
                ElevatedButton(
                  onPressed: () => onButtonPressed(),
                  child: Text("Start Timer"),
                )
              ],
            )));
  }
}
