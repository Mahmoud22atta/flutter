import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custem_appar.dart';
import 'package:notes_app/widgets/custem_textField.dart';

class EditeNoteViewBody extends StatelessWidget {
  const EditeNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          CustemAppar(
            title: 'Edite Note',
            icon: Icons.check,
          ),
          SizedBox(
            height: 50,
          ),
          CustemTextfield(hinte: 'Title'),
          SizedBox(
            height: 16,
          ),
          CustemTextfield(
            hinte: 'Content',
            maxLines: 5,
          )
        ],
      ),
    );
  }
}
