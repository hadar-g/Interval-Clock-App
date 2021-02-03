import 'package:flutter/material.dart';

class workoutLabelContainer extends StatelessWidget {
  double workoutContainerSize;
  String nextActivity;

  workoutLabelContainer(this.workoutContainerSize, this.nextActivity);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: workoutContainerSize,
      //color: Colors.red,
      decoration: BoxDecoration(
        color: Colors.redAccent,
        borderRadius: BorderRadius.circular(50.0),
      ),
      child: Padding(
        padding:
            EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0, bottom: 20.0),
        child: Column(
          //  crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Your Next Activity Will Be:",
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 30.0,
                  //backgroundColor: Colors.black,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                )),
            SizedBox(height: 20.0),
            Text(nextActivity,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                )),
          ],
        ),
      ),
    );
  }
}
