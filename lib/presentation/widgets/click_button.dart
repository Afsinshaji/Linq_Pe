import 'package:flutter/material.dart';
import 'package:linq_pe/utilities/colors.dart';

class ClickButton extends StatelessWidget {
  const ClickButton({
    super.key,
    required this.onTap,
    required this.width,
    required this.text,
    this.changeColor = LinqPeColors.kBlackColor,
    this.backGroundColor = LinqPeColors.kBlackColor,
    this.textColor = LinqPeColors.kWhiteColor,
    this.height = 50,
    this.boxShadow, required this.radius,
  });
  final double height;
  final double width;
  final Function onTap;
  final String text;
  final Color changeColor;
  final Color backGroundColor;
  final Color textColor;
  final List<BoxShadow>? boxShadow;
  final double radius;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
      decoration: BoxDecoration(
          boxShadow: boxShadow, borderRadius: BorderRadius.circular(radius)),
      child: ElevatedButton(
        onPressed: () {
          onTap();
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.pressed)) {
              return changeColor;
            }
            return backGroundColor;
          }),
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: textColor,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
