import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/useable_card.dart';
import 'package:flutter/material.dart';

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
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Container(
              child: Text(
                "Your Result",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 50,
                    fontWeight: FontWeight.bold),
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
                  Text(
                    "OVERWEIGHT",
                    style: TextStyle(
                        color: Colors.green,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "26.7",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 80,
                        fontWeight: FontWeight.w900),
                  ),
                  Center(
                    child: Text(
                        "You have a higher than normal body weight. Try to exercise more.",
                        style: kLabelStyle
                        // TextStyle(
                        //   color: Colors.white,
                        //   fontSize: 20,
                        // ),
                        ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ResultPage(),
                    ));
              },
              child: Container(
                child: Center(
                  child: Text(
                    "RE-CALCULATE",
                    style: kBottomButtonStyle,
                  ),
                ),
                padding: EdgeInsets.only(bottom: 20),
                color: kBottomContainterColour,
                width: double.infinity,
                height: kBottomContainerHeight,
              ),
            ),
          )
        ],
      ),
    );
  }
}
