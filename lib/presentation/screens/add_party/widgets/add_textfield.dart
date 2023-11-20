import 'package:flutter/material.dart';

import 'package:linq_pe/utilities/colors.dart';

class AddTextField extends StatelessWidget {
  const AddTextField({
    super.key,
    required this.controller,
    required this.isTextNumberType,
    required this.text,
    required this.fieldColor,  
  });

  final TextEditingController controller;
  final bool isTextNumberType;

  final String text;

  final Color fieldColor;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10.0,
      ),
      child: Material(
        shadowColor: fieldColor,
        elevation: 2,
        borderRadius: BorderRadius.circular(5),
        child: TextFormField(
          controller: controller,
          enableSuggestions: !isTextNumberType,
          autocorrect: !isTextNumberType,
          cursorColor: fieldColor,
          style: TextStyle(color: LinqPeColors.kBlackColor.withOpacity(0.9)),
          decoration: InputDecoration(
              labelText: text,
              labelStyle: TextStyle(
                color: fieldColor.withOpacity(0.9),
              ),
              filled: true,
              // floatingLabelBehavior: widget.floatingLabelBehavior,
              fillColor: LinqPeColors.kWhiteColor,
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.0),
                borderSide: BorderSide(
                  width: 1,
                  style: BorderStyle.solid,
                  color: fieldColor,
                ),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.0),
                borderSide: const BorderSide(width: 0, style: BorderStyle.none),
              )),
          keyboardType: isTextNumberType
              ? TextInputType.visiblePassword
              : TextInputType.emailAddress,
          validator: (text) {
            if (text == null || text.isEmpty) {
              return "Can't be Empty";
            }

            if (isTextNumberType && text.length < 10) {
              return 'Enter a valid number';
            }

            return null;
          },
        ),
      ),
    );
  }
}
