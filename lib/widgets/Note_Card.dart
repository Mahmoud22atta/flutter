import 'package:flutter/material.dart';
import 'package:notes_app/views/edite_view.dart';

class NoteCard extends StatelessWidget {
  const NoteCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return EditeNoteView();
            },
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(4),
        child: Container(
          padding: const EdgeInsets.only(top: 24, bottom: 24, left: 16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: const Color(0xffFFCC80),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            // mainAxisAlignment: MainAxisAlignment.start,s
            children: [
              ListTile(
                title: const Text(
                  'Flutter Tips',
                  style: TextStyle(color: Colors.black, fontSize: 26),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: Text(
                    'Bulid Your Career With <Mohmoud Atta>',
                    style: TextStyle(
                        color: Colors.black.withOpacity(0.6), fontSize: 18),
                  ),
                ),
                trailing: const Icon(
                  Icons.delete,
                  color: Colors.black,
                  size: 40,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 24),
                child: Text(
                  'May21,2024',
                  style: TextStyle(
                      color: Colors.black.withOpacity(0.6), fontSize: 18),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
