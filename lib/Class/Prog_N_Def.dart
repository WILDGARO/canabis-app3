import 'dart:io';

import 'package:flutter/material.dart';


class Prog_N_Def extends StatefulWidget {
    final File file;
  const Prog_N_Def(this.file);

  @override
  State<Prog_N_Def> createState() => _Prog_N_DefState();
}

class _Prog_N_DefState extends State<Prog_N_Def> {
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