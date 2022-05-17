import 'package:flutter_hometask_calculator/home_page.dart';

import 'bmi_card.dart';
import 'bottm_container.dart';
import 'constat.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final double bmiValue;
  final String shortMessage;
  final String longMessage;
  ResultScreen({this.bmiValue, this.shortMessage, this.longMessage});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ден соолук индекси BMI'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              child: Text('Жыйынтык', style: kTitleTextStyle),
            ),
          ),
          Expanded(
            flex: 5,
            child: BMICard(
              color: kActiveColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    bmiValue.toString(),
                    style: TextStyle(fontSize: 55.0),
                  ),
                  Text(
                    shortMessage.toString(),
                    style: TextStyle(fontSize: 55.0),
                  ),
                  Text(
                    longMessage.toString(),
                    style: TextStyle(fontSize: 55.0),
                  ),
                ],
              ),
            ),
          ),
          BottomContainer(
            title: 'Re-Calculate',
            onPress: () {
              Navigator.pop(context,
                  MaterialPageRoute(builder: (context) => const HomePage()));
            },
          ),
        ],
      ),
    );
  }
}
