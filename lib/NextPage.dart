import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class NextPage extends StatelessWidget {
  const NextPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Row(
        children: [
          Text('S',
              style: TextStyle(
                fontSize: 70.0,
              )),
          GradientText(
            'M',
            style: TextStyle(
              fontSize: 70.0,
            ),
            colors: [Colors.blue, Colors.orange, Colors.pink],
          ),
          Text('D',
              style: TextStyle(
                fontSize: 70.0,
              )),
        ],
      ),
    ));
  }
}
