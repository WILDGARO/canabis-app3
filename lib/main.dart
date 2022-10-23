import 'package:flutter/material.dart';
import 'package:flutter_application_3/Home/HomeTest.dart';
import 'package:flutter_application_3/Home/Page1.dart';

import 'package:flutter_application_3/Image/Image.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const Image_Home(),
        '//': (context) => HomeTest(),
      },
    );
  }
}
