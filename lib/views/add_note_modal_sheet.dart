import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custem_bottom.dart';
import 'package:notes_app/widgets/custem_textField.dart';

class AddShowModalBottomSheet extends StatelessWidget {
  const AddShowModalBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            SizedBox(
              height: 36,
            ),
            CustemTextfield(
              hinte: 'Title',
            ),
            SizedBox(
              height: 40,
            ),
            CustemTextfield(
              hinte: 'Content',
              maxLines: 5,
            ),
            SizedBox(
              height: 70,
            ),
            CustemBottom(),
          ],
        ),
      ),
    );
  }
}
