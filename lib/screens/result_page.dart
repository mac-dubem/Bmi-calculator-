import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/Components/useable_card.dart';
import 'package:flutter/material.dart';
import '../Components/buttom_red_button.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({
    super.key,
    required this.bmiResult,
    required this.resultText,
    required this.interpretation,
  });

  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "BMI CALCULATOR",
          // style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        spacing: 20,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Container(
              child: Text(
                "Your Result",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: UseableCard(
              color: kActiveCardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(resultText, style: kResultTopBodyStyle),

                  Text(bmiResult, style: kBMIResultStyle),
                  Text(
                    interpretation,
                    textAlign: TextAlign.center,
                    style: kResultBodyStyle,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: ButtomRedButton(
              buttonText: "RE-CALCULATE",
              navigate: () {
                Navigator.pop(context);
              },
            ),
          ),
        ],
      ),
    );
  }
}
