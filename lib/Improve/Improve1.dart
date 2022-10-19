
import 'dart:io';

import 'package:flutter/material.dart';

class Improve1 extends StatefulWidget {
  final File file;
  const Improve1(this.file);

  @override
  State<Improve1> createState() => _Improve1State();
}


class _Improve1State extends State<Improve1> {
    
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Column(
          children: <Widget>[
            
          Image.file(widget.file,)
          ],
        ),
      ),
    );
  }
}