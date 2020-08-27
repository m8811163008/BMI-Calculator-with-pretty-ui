import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});

  final int height;
  final int weight;

  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'اضافه وزن';
    } else if (_bmi > 18.5) {
      return 'طبیعی';
    } else {
      return 'کمبود وزن';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'شاخص بدنی شما از حالت طبیعی بیشتر است. سعی کنید ورزش کنید';
    } else if (_bmi >= 18.5) {
      return 'وزن شما طبیعی است، آفرین';
    } else {
      return 'وزن شما از حالت طبیعی کمتر است، میتوانید بیشتر غذا بخورید';
    }
  }
}
