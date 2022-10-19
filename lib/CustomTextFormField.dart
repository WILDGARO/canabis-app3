import 'package:flutter/material.dart';
import 'package:flutter_application_3/Thenme.dart';



class CustomTextFormField extends StatelessWidget {
  final String hint;
  final IconData icon;

  const CustomTextFormField({
    Key? key,
    required this.hint,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: interTextStyle.copyWith(
        color: whiteColor,
      ),
      cursorColor: yellowColor,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: interTextStyle.copyWith(
          fontSize: 14,
          color: greyColor,
          fontWeight: light,
        ),
        prefixIcon: Icon(
          icon,
          color: greyColor,
        ),
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: greyColor),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: yellowColor),
        ),
      ),
    );
  }
}
