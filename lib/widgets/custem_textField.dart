import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:notes_app/consts/const_color.dart';

class CustemTextfield extends StatelessWidget {
  const CustemTextfield({super.key, required this.hinte, this.maxLines = 1});
  final String hinte;
  final int maxLines;
  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxLines,
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
          enabledBorder: buildBorder(),
          focusedBorder: buildBorder(kPrimaryColor),
          hintText: hinte,
          hintStyle: const TextStyle(color: kPrimaryColor),
          border: buildBorder()),
    );
  }
}

OutlineInputBorder buildBorder([Color]) {
  return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(
        color: Color ?? Colors.white,
      ));
}
