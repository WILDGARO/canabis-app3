import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Early_N_Def extends StatefulWidget {
  final File file;
  const Early_N_Def(this.file);

  @override
  State<Early_N_Def> createState() => _Early_N_DefState();
}

class _Early_N_DefState extends State<Early_N_Def> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                  height: 100,
                  width: 100,
                  child: Image.file(
                    widget.file,
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
