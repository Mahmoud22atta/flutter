import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custem_textField.dart';

class AddShowModalBottomSheet extends StatelessWidget {
  const AddShowModalBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustemTextfield(),
      ],
    );
  }
}
