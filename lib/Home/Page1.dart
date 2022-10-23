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

  // @override
  // void initState() {
  //   super.initState();
  //   loadmodel().then((value) {
  //     setState(() {});
  //   });
  // }

  // detectimage(File l) async {
  //    var prediction = await Tflite.runModelOnImage(
  //     path: l.path,
  //     numResults: 2,
  //     threshold: 0.6,
  //     imageMean: 127.5,
  //     imageStd: 127.5,
  //    );

  //   setState(() {
  //     output = prediction;
  //     label = (output![0]['label']).toString().substring(2);
  //     fine = gfg[label];
  //     loading = false;
  //   });
  // }

  // loadmodel() async {
  //   await Tflite.loadModel(
  //     model: 'assets/model_unquant.tflite/',
  //     labels: 'assets/labels.txt/',
  //   );
  // }

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

  // Future uploadImage() async {
  //   final uri = Uri.parse("http://192.168.203.189/my_app/ImageAI.php");
  //   var request = http.MultipartRequest('POST', uri);
  //   request.fields['Name'] = nameController.text;
  //   request.fields['Email'] = imageController.text;
  //   var pic = await http.MultipartFile.fromPath("image", _file!.path);
  //   request.files.add(pic);
  //   var response = await request.send();
  //   if (response.statusCode == 200) {
  //     print("GG");
  //     print(_file!);
  //   } else {
  //     print("ZZ");
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.green[600],
      body: Container(
        height: h,
        width: w,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // TextFormField(
              //                     style: interTextStyle.copyWith(
              //                       color: whiteColor,
              //                     ),
              //                     controller: nameController,
              //                     cursorColor: yellowColor,
              //                     decoration: InputDecoration(
              //                       hintText: 'NameImage',
              //                       hintStyle: interTextStyle.copyWith(
              //                         color: greyColor,
              //                         fontSize: 14,
              //                         fontWeight: light,
              //                       ),
              //                       prefixIcon: const Icon(
              //                         Icons.image,
              //                         color: Colors.white,
              //                       ),
              //                       enabledBorder: const UnderlineInputBorder(
              //                         borderSide: BorderSide(
              //                           color: greyColor,
              //                         ),
              //                       ),
              //                       focusedBorder: const UnderlineInputBorder(
              //                         borderSide:
              //                             BorderSide(color: yellowColor),
              //                       ),
              //                       focusColor: yellowColor,
              //                     ),

              //                   ),

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

              //  loading == true
              //      ? Container()
              // Container(
              //   color: Color.fromARGB(255, 134, 237, 141),
              //   child: Column(
              //     children: [
              //       Container(
              //         height: 380,
              //         padding: EdgeInsets.all(15),
              //         child: Image.file(_file!),
              //       ),
              //       //     Text(
              //       //     (output![0]['label']).toString().substring(1),
              //       //     ),
              //       //  Text(
              //       //      'Confidence: ' +
              //       //         (output![0]['confidence']).toStringAsFixed(4),
              //       //    ),
              //     ],
              //   ),
              // ),
              // Container(
              //   child: ClipRect(
              //     child: ElevatedButton(
              //       onPressed: getImageFromGallery,
              //       child: Text(
              //         "กล้องถ่ายรูป",
              //         style: TextStyle(color: Color.fromARGB(255, 186, 186, 186)),
              //       ),
              //     ),
              //   ),
              // ),
              // Container(
              //   child: ClipRect(
              //     child: ElevatedButton(
              //       onPressed: () async {
              //         //uploadImage();
              //         await showDialog(
              //             context: context,
              //             builder: (BuildContext context) => AlertDialog(
              //                   title: Text(''),
              //                   backgroundColor:
              //                       Color.fromARGB(255, 29, 29, 29),

              //                   content: TextFormField(
              //                     style: interTextStyle.copyWith(
              //                       color: whiteColor,
              //                     ),
              //                     controller: imageController,
              //                     cursorColor: yellowColor,
              //                     decoration: InputDecoration(
              //                       hintText: 'Email',
              //                       hintStyle: interTextStyle.copyWith(
              //                         color: greyColor,
              //                         fontSize: 14,
              //                         fontWeight: light,
              //                       ),
              //                       prefixIcon: const Icon(
              //                         Icons.save,
              //                         color: Colors.white,
              //                       ),
              //                       enabledBorder: const UnderlineInputBorder(
              //                         borderSide: BorderSide(
              //                           color: greyColor,
              //                         ),
              //                       ),
              //                       focusedBorder: const UnderlineInputBorder(
              //                         borderSide:
              //                             BorderSide(color: yellowColor),
              //                       ),
              //                       focusColor: yellowColor,
              //                     ),

              //                   ),

              //                   actions: <Widget>[
              //                     TextButton(
              //                       onPressed: () {
              //                         uploadImage();
              //                         Navigator.pop(context);
              //                       },
              //                       child: Text("Save"),
              //                       style: TextButton.styleFrom(
              //                         primary: Colors.white,
              //                         backgroundColor: Colors.blue,
              //                       ),
              //                     ),
              //                     TextButton(
              //                         child: Text('Close'),
              //                         style: TextButton.styleFrom(
              //                           primary: Colors.white,
              //                           backgroundColor: Colors.blue,
              //                         ),
              //                         onPressed: () {
              //                           Navigator.pop(context);
              //                           return;
              //                         }),
              //                   ],
              //                 ));
              //       },
              //       child: Text(
              //         "บันทึก",
              //         style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
              //       ),
              //     ),
              //   ),
              // ),
              // Container(
              //   child: ClipRect(
              //     child: ElevatedButton(
              //       onPressed: () {
              //         Navigator.push(
              //             context,
              //             MaterialPageRoute(
              //                 builder: (context) => Improve1(_file!)));
              //       },
              //       child: Text(
              //         "เเก้ไข",
              //         style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
              //       ),
              //     ),
              //   ),
              // ),

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
                  "กดรูปค้างไว้ จะมีเมนูขึ้นมา",
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
