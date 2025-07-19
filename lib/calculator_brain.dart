import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({required this.heigth, required this.weight});

  final int weight;
  final int heigth;

  double _bmi = 0;

  String calculateBMI() {
    double _bmi = weight / pow(heigth / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return "OVERWEIGHT";
    } else if (_bmi >= 18.5) {
      return "NORMAL";
    } else {
      return "UNDERWEIGHT";
    }
  }

  String getInterpetation() {
    if (_bmi >= 25) {
      return "You have a higher than normal body weight. Try to exercise more";
    } else if (_bmi >= 18.5) {
      return "You have a normal body weight. Good job";
    } else {
      return "You have a lower normal body weight. You can eat a bit more";
    }
  }
}

// class CalculatorBrain {
//   CalculatorBrain({required this.height, required this.weight});

//   final int height;
//   final int weight;

//   double _bmi = 0;

//   String calculateBMI() {
//     double _bmi = weight / pow(height / 100, 2);
//     return _bmi.toStringAsFixed(1);
//   }

//   String getResult() {
//     if (_bmi >= 25) {
//       return "OVERWEIGHT";
//     } else if (_bmi >= 18.5) {
//       return "NORMAL";
//     } else {
//       return "UNDERWEIGHT";
//     }
//   }

//   String getInte() {
//     if (_bmi >= 25) {
//       return "You have a higher than normal body weight. Try to exercise more";
//     } else if (_bmi >= 18.5) {
//       return "You have a normal body weight. Good job";
//     } else {
//       return "You have a lower normal body weight. You can eat a bit more";
//     }
//   }
// }
