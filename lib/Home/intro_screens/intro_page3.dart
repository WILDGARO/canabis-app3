import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class IntroPage3 extends StatelessWidget {
  const IntroPage3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[50],
      body: Center(
        child: Container(
          child: Image.asset(
            "assets/KU_Logo.png",
          ),
          // Text(
          //   'Nitrogen deficiency detection system in cannabis leaves',
          //   style: TextStyle(fontSize: 18),
          // ),
        ),
      ),
    );
  }
}
