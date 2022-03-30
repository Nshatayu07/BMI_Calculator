import 'package:bmi_calculator/components/RepeatCard.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/components/RepeatCard.dart';
import 'package:flutter/widgets.dart';


class ResultPage extends StatelessWidget {

  ResultPage({required this.bmiResult, required this.interpretation, required this.resultText});

  final String bmiResult;
  final String resultText;
  final String interpretation;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(child: Container(
            child: Center(
              child: Text(
                'Your Results',
                style: kTitleTextStyle,
              ),
            ),
          ),
          ),
          Expanded(
            flex: 5,
            child: RepeatCard(
              colour: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                      resultText.toUpperCase(),
                    style: kResultTextStyle,
                  ),
                  Text(
                    bmiResult,
                  style: kBMITextStyle,
                  ),
                  Text(
                    interpretation,
                    style: kBodyTextStyle,
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: Container(
              alignment: Alignment.center,
              child: const Text(
                'RE-CALCULATE',
                style: TextStyle(
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.5),
              ),
              color: kBottomContainerColor,
              margin: const EdgeInsets.only(top: 10.0),
              height: kBottomContainerHeight,
              width: double.infinity,
            ),
          ),
        ],
      ),
    );
  }
}
