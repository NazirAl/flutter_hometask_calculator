import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BMIRoundedBtn extends StatelessWidget {
  final IconData icon;
  final Function onPress;

  BMIRoundedBtn({this.icon, this.onPress, Null Function() onPressed});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 0.0,
      child: Icon(icon),
      onPressed: onPress,
      constraints: BoxConstraints.tightFor(width: 55, height: 55),
      shape: CircleBorder(),
      fillColor: Color(0XFF4C4F5E),
    );
  }
}
