import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class timerCircle extends StatelessWidget {
  int timeInMinute;
  double timerContainerHeight;
  double percent;
  int seconds;

  timerCircle(
      this.timeInMinute, this.seconds, this.percent, this.timerContainerHeight);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: timerContainerHeight,
        child: CircularPercentIndicator(
          radius: 250.0,
          percent: percent,
          animation: true,
          circularStrokeCap: CircularStrokeCap.round,
          animateFromLastPercent: true,
          lineWidth: 10,
          progressColor: Colors.red,
          center: Text("$timeInMinute:" + seconds.toString().padLeft(2, "0"),
              style: TextStyle(color: Colors.white, fontSize: 70.0)),
        ));
  }
}
