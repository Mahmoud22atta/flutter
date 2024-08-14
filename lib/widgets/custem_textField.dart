import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:notes_app/consts/const_color.dart';

class CustemTextfield extends StatelessWidget {
  const CustemTextfield({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50, left: 12, right: 12),
      child: TextField(
        cursorColor: kPrimaryColor,
        decoration: InputDecoration(
            enabledBorder: buildBorder(),
            focusedBorder: buildBorder(kPrimaryColor),
            hintText: 'Title',
            hintStyle: TextStyle(color: kPrimaryColor),
            border: buildBorder()),
      ),
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
