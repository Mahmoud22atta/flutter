import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custem_searh_icon.dart';

class CustemAppar extends StatelessWidget {
  const CustemAppar({super.key, required this.title, required this.icon});
  final String title;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 25),
        ),
        Spacer(),
        CustemSearhIcon(
          icon: icon,
        )
      ],
    );
  }
}
