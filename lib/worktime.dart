import 'package:flutter/material.dart';

class worktime extends StatelessWidget {
  int workTimeDisplay;

  worktime(this.workTimeDisplay);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
            child: Column(children: [
      Text('work on',
          style: TextStyle(
            fontSize: 25.0,
          )),
      SizedBox(
        height: 10.0,
      ),
      Text("$workTimeDisplay", style: TextStyle(fontSize: 40.0))
    ])));
  }
}

/*
Text(
                                            "Work on",
                                            style: TextStyle(
                                              fontSize: 30.0,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10.0,
                                          ),
                                          Text("30",
                                              style: TextStyle(fontSize: 75.0))

*/
