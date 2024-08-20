import 'package:flutter/material.dart';
import 'package:notes_app/consts/const_color.dart';

class CustemBottom extends StatelessWidget {
  const CustemBottom({super.key, this.ontap, this.isloadig = false});
  final void Function()? ontap;
  final bool isloadig;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 55,
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: isloadig
              ? SizedBox(
                  height: 25,
                  width: 25,
                  child: CircularProgressIndicator(
                    color: Colors.black,
                  ),
                )
              : Text(
                  'add',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 20,
                      fontStyle: FontStyle.italic),
                ),
        ),
      ),
    );
  }
}
