import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubit/cubit/add_note_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/custem_bottom.dart';
import 'package:notes_app/widgets/custem_textField.dart';

class AddNotesForm extends StatefulWidget {
  const AddNotesForm({
    super.key,
  });

  @override
  State<AddNotesForm> createState() => _AddNotesFormState();
}

final GlobalKey<FormState> globalKey = GlobalKey();
AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
String? title, subtitle;

class _AddNotesFormState extends State<AddNotesForm> {
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
          BlocBuilder<AddNoteCubit, AddNoteState>(
            builder: (context, state) {
              return CustemBottom(
                isloadig: state is AddNoteLoading ? true : false,
                ontap: () {
                  if (globalKey.currentState!.validate()) {
                    globalKey.currentState!.save();
                    var noteModel = NoteModel(
                        title: title!,
                        subtitle: subtitle!,
                        date: DateTime.now().toString(),
                        color: Colors.blue.value);
                    BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
