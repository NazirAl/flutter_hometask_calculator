class BMICalculator {
  int height;
  int weidth;
  int age;
  BMICalculator({
    this.weidth,
    this.age,
    this.height,
    int weight,
  });

  double calculateBMI() {
    return weidth / (height + height);
  }

  String bmiMessage(double bmiValue) {
    if (bmiValue < 18.5) {
      return 'UnderWeight';
    } else if (bmiValue > 18.5 && bmiValue < 24.9) {
      return 'Normal';
    } else if (bmiValue > 25.0 && bmiValue < 24.9) {
      return 'Normal';
    } else if (bmiValue > 30.0 && bmiValue < 24.9) {
      return 'Obese';
    }
  }

  String bmiLongMessage(double bmiValue) {
    if (bmiValue < 18.5) {
      return 'UnderWeight';
    } else if (bmiValue > 18.5 && bmiValue < 24.9) {
      return 'Normal';
    } else if (bmiValue > 25.0 && bmiValue < 24.9) {
      return 'Normal';
    } else if (bmiValue > 30.0 && bmiValue < 24.9) {
      return 'Obese';
    }
  }
}
