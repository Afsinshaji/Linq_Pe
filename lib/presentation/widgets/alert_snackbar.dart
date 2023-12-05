import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linq_pe/utilities/colors.dart';

void alertSnackbar(BuildContext context, String message) {
  final snackBar = SnackBar(
    backgroundColor: LinqPeColors.kredColor,
    content: Text(
      message,
      style: GoogleFonts.poppins(
        textStyle: const TextStyle(
          letterSpacing: .5,
          fontSize: 16,
          color: LinqPeColors.kWhiteColor,
          fontWeight: FontWeight.w500,
        ),
      ),
    ),
    action: SnackBarAction(
      label: 'Okay',
      textColor: LinqPeColors.kWhiteColor,
      onPressed: () {
        ScaffoldMessenger.of(context).hideCurrentSnackBar();
      },
    ),
  );

  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}
