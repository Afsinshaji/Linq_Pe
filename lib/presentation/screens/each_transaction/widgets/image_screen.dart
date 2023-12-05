import 'dart:io';

import 'package:flutter/material.dart';
import 'package:linq_pe/utilities/colors.dart';

class ImageScreen extends StatelessWidget {
  const ImageScreen({super.key, required this.billImage});
  final File billImage;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: LinqPeColors.kPinkColor,
      body: SafeArea(
          child: Center(
        child: Image.file(billImage),
      )),
    );
  }
}
