import 'package:flutter/material.dart';
import '../constants.dart';

class CardsContent extends StatelessWidget {
  const CardsContent({super.key, required this.icons, required this.label});

  final IconData icons;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icons, size: 80, color: Colors.white),

        Text(label, style: kLabelStyle),
      ],
    );
  }
}
