import 'package:flutter/material.dart';

class CustemSearhIcon extends StatelessWidget {
  const CustemSearhIcon({
    super.key,
    required this.icon,
  });
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.1),
          borderRadius: BorderRadius.circular(8)),
      height: 40,
      width: 40,
      child: Center(child: Icon(icon)),
    );
  }
}
