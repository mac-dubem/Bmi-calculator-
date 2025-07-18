import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/Components/useable_card.dart';
import 'package:flutter/material.dart';
import '../Components/buttom_red_button.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({super.key});

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
                  Text("OVERWEIGHT", style: kResultTopBodyStyle),

                  Text("26.7", style: kBMIResultStyle),
                  Text(
                    "You have a higher than normal body weight. Try to exercise more.",
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
