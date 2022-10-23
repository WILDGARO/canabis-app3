import 'dart:async';

import 'package:flutter/material.dart';

class Image_Home extends StatefulWidget {
  const Image_Home({super.key});

  @override
  State<Image_Home> createState() => _Image_HomeState();
}

class _Image_HomeState extends State<Image_Home> {
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5), () {
      Navigator.pushNamedAndRemoveUntil(context, '//', (route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 73, 211, 84),
      body: Column(
        children: [
          SizedBox(
            height: 300,
          ),
          Center(
            child: Container(child: Image.asset("assets/logo1.png",scale: 0.7)),
          ),
          Text("Canabis"),
          SizedBox(
            height: 200,
          ),
          Center(
            child: CircularProgressIndicator(
              color: Color.fromARGB(255, 255, 255, 255),
            ),
          ),
        ],
      ),
    );
  }
}