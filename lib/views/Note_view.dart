import 'package:flutter/material.dart';
import 'package:notes_app/views/add_note_modal_sheet.dart';
import 'package:notes_app/widgets/Note_view_body.dart';

class NoteView extends StatelessWidget {
  const NoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const NoteViewBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              context: context,
              builder: (cotext) {
                return AddShowModalBottomSheet();
              });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
