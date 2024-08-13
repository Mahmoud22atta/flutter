import 'package:flutter/material.dart';

class CustemSearhIcon extends StatelessWidget {
  const CustemSearhIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.1),
          borderRadius: BorderRadius.circular(8)),
      height: 40,
      width: 40,
      child: const Center(child: Icon(Icons.search)),
    );
  }
}
