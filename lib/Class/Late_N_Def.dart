import 'dart:io';

import 'package:flutter/material.dart';

class Late_N_Def extends StatefulWidget {
  final File file;
  const Late_N_Def(this.file);

  @override
  State<Late_N_Def> createState() => _Late_N_DefState();
}

class _Late_N_DefState extends State<Late_N_Def> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              Image.file(
                widget.file,
              )
            ],
          ),
        ),
      ),
    );
  }
}
