import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linq_pe/presentation/screens/add_amount/screen_add_amount.dart';
import 'package:linq_pe/presentation/screens/select_party/screen_select_party.dart';
import 'package:linq_pe/presentation/view_state/search_riverpod/search.dart';
import 'package:linq_pe/utilities/colors.dart';

class FloatingAddButton extends ConsumerStatefulWidget {
  const FloatingAddButton(
      {super.key,
      required this.buttonName,
      required this.partyType,
      required this.partyColor, required this.heroTag});
  final String buttonName;
  final String partyType;
  final Color partyColor;
  final String heroTag;

  @override
  FloatingAddButtonState createState() => FloatingAddButtonState();
}

class FloatingAddButtonState extends ConsumerState<FloatingAddButton> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return FloatingActionButton.extended(
      heroTag: widget.heroTag,
      backgroundColor: widget.partyColor,
      onPressed: () {
        contactSearch('', ref);
        if (widget.partyType == 'Customer') {
          Navigator.push(
              context,
              CupertinoPageRoute(
                builder: (context) => SelectPartyScreen(
                  partyColor: widget.partyColor,
                  partyType: widget.partyType,
                ),
              ));
        } else if (widget.partyType == 'Pay') {
          Navigator.push(
              context,
              CupertinoPageRoute(
                builder: (context) => const AddAmountScreen(
isAddExpense: true,
                    isPay: false,
                    isAddBalance: false,
                    partyName: '',
                    isSplit: false,
                    isSecondaryPay: false,
                    isGive: false),
              ));
        }
      },
      label: Row(
        children: [
          Icon(
            widget.partyType == 'Pay' ? Icons.currency_rupee : Icons.person_add,
            color: LinqPeColors.kWhiteColor,
          ),
          SizedBox(
            width: size.width * 0.001,
          ),
          Text(
            widget.buttonName,
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                letterSpacing: .5,
                fontSize: size.width * 0.04,
                color: LinqPeColors.kWhiteColor,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
