import 'package:flutter/material.dart';
import 'input_page.dart';
void main() {
  runApp(BMICalculator());
}

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
        // colorScheme: ColorScheme(
        //   brightness: Brightness.dark,
        //   primary: Colors.black,
        //   onPrimary: Colors.red,
        //   secondary: Colors.deepOrange,
        //   onSecondary: Colors.purple,
        //   error: Colors.blueAccent,
        //   onError: Colors.orangeAccent,
        //   surface: Colors.green,
        //   onSurface: Colors.cyan,
        // ),
      ),
      home: InputPage(),
    );
  }
}
