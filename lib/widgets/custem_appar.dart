import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custem_searh_icon.dart';

class CustemAppar extends StatelessWidget {
  const CustemAppar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text(
          'Notes',
          style: TextStyle(fontSize: 25),
        ),
        Spacer(),
        CustemSearhIcon()
      ],
    );
  }
}
