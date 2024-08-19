import 'package:flutter/material.dart';
import 'package:notes_app/consts/const_color.dart';

class CustemTextfield extends StatelessWidget {
  const CustemTextfield(
      {super.key, required this.hinte, this.maxLines = 1, this.onsaved});
  final String hinte;
  final int maxLines;
  final void Function(String?)? onsaved;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onsaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'this is required';
        } else {
          return null;
        }
      },
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
