import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weght});

  final int height;
  final int weght;

  double _bmi;

  String calculateBMI() {
    double bmi = weght / pow(height / 100, 2);
    return bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'underWeight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'underWeight';
    }
  }
}
