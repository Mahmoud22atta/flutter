import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:notes_app/widgets/custem_appar.dart';
import 'package:notes_app/widgets/custem_searh_icon.dart';
import 'package:notes_app/widgets/note_list_view.dart';

class NoteViewBody extends StatelessWidget {
  const NoteViewBody({
    super.key,
  });

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
            title: 'Notes',
            icon: Icons.search,
          ),
          Expanded(
              child: Padding(
            padding: EdgeInsets.symmetric(vertical: 16),
            child: NoteListView(),
          ))
        ],
      ),
    );
  }
}
