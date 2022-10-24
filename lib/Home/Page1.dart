import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_3/Class/Early_N_Def.dart';
import 'package:flutter_application_3/Class/Healthyt_N.dart';
import 'package:flutter_application_3/Class/Late_N_Def.dart';
import 'package:flutter_application_3/Class/Prog_N_Def.dart';
import 'package:flutter_application_3/Home/profile.dart';
import 'package:flutter_application_3/Improve/Improve1.dart';
import 'package:flutter_application_3/Thenme.dart';
import 'package:image_picker/image_picker.dart';
import 'package:http/http.dart' as http;

import 'dart:io';

class HomePage1 extends StatefulWidget {
  const HomePage1({super.key});

  @override
  State<HomePage1> createState() => _HomePage1State();
}

class _HomePage1State extends State<HomePage1> {
  bool loading = true;

  File? _file;
  var output;
  var label;
  var fine;
  TextEditingController nameController = TextEditingController();
  TextEditingController imageController = TextEditingController();
  ImagePicker image = ImagePicker();
  var gfg = {
    'Class 1': 'Class 1',
    'Class 2': 'Class 2',
    'Class 3': 'Class 3',
  };

  @override
  void dispose() {
    super.dispose();
  }

  getImageFromCamera() async {
    var img = await image.pickImage(source: ImageSource.camera);

    setState(() {
      _file = File(img!.path);
    });
    //detectimage(file!);
    return (_file);
  }

  final picker = ImagePicker();

  getImageFromGallery() async {
    var PickerImage = await picker.pickImage(source: ImageSource.gallery);

    setState(() {
      _file = File(PickerImage!.path);
    });
    //detectimage(file!);
    return (_file);
  }

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color.fromARGB(255, 73, 211, 84),
      body: Container(
        height: h,
        width: w,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 200,
                  width: 200,
                  child: Container(
                    child: _file == null ? Text('') : Image.file(_file!),
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: CupertinoContextMenu(
                          child: Image.asset("assets/logo1.png"),
                          actions: <Widget>[
                            CupertinoContextMenuAction(
                              child: const Text('เปิดแกลลอรี่'),
                              onPressed: getImageFromGallery,
                            ),
                            CupertinoContextMenuAction(
                              child: const Text('เปิดกล้องถ่ายรูป'),
                              onPressed: getImageFromCamera,
                            ),
                            CupertinoContextMenuAction(
                              child: const Text('Healthyt_N'),
                              onPressed: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return Healthyt_N(_file!);
                                }));
                              },
                            ),
                            CupertinoContextMenuAction(
                              child: const Text('Early_N_Def'),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Healthyt_N(_file!)));
                              },
                            ),
                            CupertinoContextMenuAction(
                              child: const Text('Prog_N_Def'),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Late_N_Def(_file!)));
                              },
                            ),
                            CupertinoContextMenuAction(
                              child: const Text('Late_N_Def'),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Prog_N_Def(_file!)));
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Text(
                  "Press logo to start function.",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
