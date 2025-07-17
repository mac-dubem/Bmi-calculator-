import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'cards_content.dart';
import 'useable_card.dart';
import 'constants.dart';

enum Gender { Male, Female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? gender;

  int height = 180;
  int weight = 60;
  int age = 19;

  // Color maleCardColour = inactiveColour;
  // Color femaleCardColour = inactiveColour;

  // // male =1 , female = 2 ,

  // void updateCardColour(Gender gender) {
  //   if (gender == Gender.Male) {
  //     if (maleCardColour == inactiveColour) {
  //       maleCardColour = activeColour;
  //       femaleCardColour = inactiveColour;
  //     } else {
  //       maleCardColour = inactiveColour;
  //     }
  //   }

  //   if (gender == Gender.Female) {
  //     if (femaleCardColour == inactiveColour) {
  //       femaleCardColour = activeColour;
  //       maleCardColour = inactiveColour;
  //     } else
  //       femaleCardColour = inactiveColour;
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF0A0E21),
        title: Text('BMI CALCULATOR', style: TextStyle(color: Colors.white)),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        spacing: 20,
        children: [
          Expanded(
            child: Row(
              // spacing: 20,
              children: [
                Expanded(
                  child: UseableCard(
                    onPress: () {
                      // print("tap me ");
                      setState(() {
                        gender = Gender.Male;
                      });
                    },
                    color: gender == Gender.Male
                        ? kActiveCardColour
                        : kInactiveCardColour,
                    cardChild: CardsContent(
                      icons: FontAwesomeIcons.mars,
                      label: "MALE",
                    ),
                  ),
                ),

                Expanded(
                  child: UseableCard(
                    onPress: () {
                      setState(() {
                        gender = Gender.Female;
                      });
                    },
                    color: gender == Gender.Female
                        ? kActiveCardColour
                        : kInactiveCardColour,
                    cardChild: CardsContent(
                      icons: FontAwesomeIcons.venus,

                      label: "FEMALE",
                    ),
                  ),
                ),
              ],
            ),
          ),

          Expanded(
            child: UseableCard(
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("HEIGHT", style: kLabelStyle),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(height.toString(), style: kNumberTextStyle),
                      Text("cm", style: kLabelStyle),
                    ],
                  ),
                  SliderTheme(
                    data: SliderThemeData(
                      activeTrackColor: Colors.white,
                      inactiveTrackColor: Color(0xFF8D8E98),
                      thumbColor: Color(0xFFEB1555),
                      overlayColor: Color(0x29EB1555),
                      thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15),
                      overlayShape: RoundSliderOverlayShape(overlayRadius: 30),
                    ),
                    child: Slider(
                      value: height.toDouble(),
                      min: 120,
                      max: 220,
                      // activeColor: Color(0xFFEB1555),
                      // inactiveColor: Color(0xFF8D8E98),
                      onChanged: (double newVaule) {
                        setState(() {
                          height = newVaule.round();
                        });
                      },
                    ),
                  ),
                ],
              ),
              color: kActiveCardColour,
            ),
          ),

          Expanded(
            child: Row(
              // spacing: 20,
              children: [
                Expanded(
                  child: UseableCard(
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("WEIGHT", style: kLabelStyle),
                        Text(weight.toString(), style: kNumberTextStyle),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              onPressed: () {
                                setState(() {
                                  weight--;
                                });
                              },
                            ),

                            SizedBox(width: 10),

                            RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              onPressed: () {
                                setState(() {
                                  weight++;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                    color: kActiveCardColour,
                  ),
                ),

                Expanded(
                  child: UseableCard(
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("AGE", style: kLabelStyle),
                        Text(age.toString(), style: kNumberTextStyle),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              onPressed: () {
                                setState(() {
                                  age--;
                                });
                              },
                            ),

                            SizedBox(width: 10),

                            RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              onPressed: () {
                                setState(() {
                                  age++;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                    color: kActiveCardColour,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: kBottomContainterColour,
            width: double.infinity,
            height: kBottomContainerHeight,
          ),
        ],
      ),
    );
  }
}

class RoundIconButton extends StatelessWidget {
  const RoundIconButton({super.key, this.icon, required this.onPressed});

  final IconData? icon;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon, color: Colors.white),
      elevation: 0.0,
      constraints: BoxConstraints.tightFor(height: 56, width: 56),
      fillColor: Color(0xFF4C4F5E),
      shape: CircleBorder(),
      onPressed: onPressed,
    );
  }
}
