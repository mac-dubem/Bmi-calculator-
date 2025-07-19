import 'package:flutter/material.dart';

import '../constants.dart';

class ButtomRedButton extends StatelessWidget {
  const ButtomRedButton({
    super.key,
    required this.buttonText,
    required this.navigate,
  });

  final String buttonText;

  final void Function() navigate;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: navigate,
      child: Container(
        child: Center(child: Text(buttonText, style: kBottomButtonStyle)),
        padding: EdgeInsets.only(bottom: 20),
        // margin: EdgeInsets.only(top: 10),
        color: kBottomContainterColour,
        width: double.infinity,
        height: kBottomContainerHeight,
      ),
    );
  }
}
