import 'package:flutter/material.dart';
import 'package:linq_pe/utilities/colors.dart';

class ReportPdf extends StatelessWidget {
  const ReportPdf({super.key});

  @override
  Widget build(BuildContext context) {
     final Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          height: size.height*0.2,
          
          color: LinqPeColors.kPinkColor,
        ),
        Text('Party List Report'),
        
      ],
    );
  }
}