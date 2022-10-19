import 'package:flutter/material.dart';

import 'package:flutter_application_3/API/LoginAPI.dart';
import 'package:flutter_application_3/Home/Page1.dart';
import 'package:flutter_application_3/Home/ProBar.dart';
import 'package:flutter_application_3/Thenme.dart';

class HomeTest extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      appBar: AppBar(
         backgroundColor: otpColor,
      ),
      // drawer: ProBar(user),
      body: HomePage1(),
    );
  }
}
