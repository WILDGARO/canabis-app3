import 'dart:io';

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
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 73, 211, 84),
      ),
      
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [ 
                 SizedBox(
                   child: Image.file(
                      widget.file,
                      width: 500,
                      height: 500,
                    ),
                 ),
                 Container(
                  child: Text("Hello",style: TextStyle(fontSize: 50,color: Colors.black),),
                 )
            ],
          ),
        ),
      ),
    );
  }
}
