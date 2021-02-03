import 'package:flutter/material.dart';

class offtime extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
            child: Column(children: [
      Text('Time off',
          style: TextStyle(
            fontSize: 25.0,
          )),
      SizedBox(
        height: 10.0,
      ),
      Text('2', style: TextStyle(fontSize: 40.0))
    ])));
  }
}
