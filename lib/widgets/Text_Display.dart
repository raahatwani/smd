import 'package:flutter/material.dart';

class Text_Display extends StatelessWidget {
  String input = '';
  var color;
  double fontsize;
  var weight;

  Text_Display({
    required this.input,
    required this.color,
    required this.fontsize,
    required this.weight,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      input,
      style: TextStyle(
          fontSize: fontsize, color: Colors.white, fontWeight: weight),
    );
  }
}
