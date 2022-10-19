import 'package:flutter/material.dart';
import 'package:flutter_application_3/Thenme.dart';

class Custom extends StatelessWidget {
  const Custom({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: double.infinity,
      child: TextButton(onPressed: (){}, style: TextButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(defaulRadius)
        ),
        
      ),
      child: Text("OK",style: poppinsTextStyle.copyWith(
        color: Colors.orange,
        fontWeight: bold,
      ),),
      ),
      
    );
  }
}