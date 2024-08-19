import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custem_bottom.dart';
import 'package:notes_app/widgets/custem_textField.dart';

class AddNotesModal extends StatefulWidget {
  const AddNotesModal({
    super.key,
  });

  @override
  State<AddNotesModal> createState() => _AddNotesModalState();
}

final GlobalKey<FormState> globalKey = GlobalKey();
AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
String? title, subtitle;

class _AddNotesModalState extends State<AddNotesModal> {
  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: autovalidateMode,
      key: globalKey,
      child: Column(
        children: [
          SizedBox(
            height: 36,
          ),
          CustemTextfield(
            hinte: 'Title',
            onsaved: (value) {
              title = value;
            },
          ),
          SizedBox(
            height: 40,
          ),
          CustemTextfield(
            onsaved: (value) {
              subtitle = value;
            },
            hinte: 'Content',
            maxLines: 5,
          ),
          SizedBox(
            height: 70,
          ),
          CustemBottom(
            ontap: () {
              if (globalKey.currentState!.validate()) {
                globalKey.currentState!.save();
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
          ),
        ],
      ),
    );
  }
}
