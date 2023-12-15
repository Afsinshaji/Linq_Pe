import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:linq_pe/presentation/view_state/add_amount_riverpod/add_amount.dart';
import 'package:linq_pe/presentation/view_state/add_split_amount/add_split_amount.dart';

import 'package:linq_pe/utilities/colors.dart';

class AddTextField extends ConsumerWidget {
  const AddTextField({
    super.key,
    required this.controller,
    required this.isTextNumberType,
    required this.text,
    required this.fieldColor,
    this.prefix,
    this.fontSize,
    this.textFieldType = TextFieldType.none,
    this.providerNum=-1,
  });

  final TextEditingController controller;
  final bool isTextNumberType;
  final int providerNum;

  final String text;

  final Color fieldColor;
  final Widget? prefix;
  final double? fontSize;
  final TextFieldType textFieldType;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10.0,
      ),
      child: Material(
        shadowColor: fieldColor,
        elevation: 2,
        borderRadius: BorderRadius.circular(5),
        child: TextFormField(
          onChanged: (value) {
            if (textFieldType == TextFieldType.amount) {
              if (value.isNotEmpty) {
                addAmount(double.parse(value), ref);
              }
            } else if (textFieldType == TextFieldType.details) {
              addTransactionDetails(value, ref);
            } else if (textFieldType == TextFieldType.transactionId) {
              addTransactionId(value, ref);
            } else if (textFieldType == TextFieldType.splitAmount&&providerNum>=0&&value.isNotEmpty) {
              addAmountProviderValue(providerNum,ref,double.parse(value));
            }
          },
          controller: controller,
          enableSuggestions: !isTextNumberType,
          autocorrect: !isTextNumberType,
          cursorColor: fieldColor,
          style: TextStyle(
              color: LinqPeColors.kBlackColor.withOpacity(0.9),
              fontSize: fontSize),
          decoration: InputDecoration(
              prefixIcon: prefix,
              labelText: text,
              labelStyle: TextStyle(
                color: fieldColor.withOpacity(0.9),
                fontSize: fontSize != null ? fontSize! * 0.6 : null,
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
              ? TextInputType.number
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

enum TextFieldType { details, transactionId, amount, splitAmount, none }
