import 'dart:io';

import 'package:flutter/material.dart';


class Healthyt_N extends StatefulWidget {
    final File file;
  const Healthyt_N(this.file);

  @override
  State<Healthyt_N> createState() => _Healthyt_NState();
}

class _Healthyt_NState extends State<Healthyt_N> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              
            Image.file(widget.file,)
            ],
          ),
        ),
      ),
    );
  }
}