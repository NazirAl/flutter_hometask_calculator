import 'package:flutter/material.dart';

class BottomContainer extends StatelessWidget {
  final String title;
  final Function onPress;
  BottomContainer({this.title, this.onPress});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: MediaQuery.of(context).size.width,
      color: Colors.pink,
      child: GestureDetector(
        onTap: onPress,
        child: Center(
          child: Text(
            title,
            style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
