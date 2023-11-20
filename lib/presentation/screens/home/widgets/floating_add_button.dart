import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linq_pe/presentation/screens/select_party/screen_select_party.dart';
import 'package:linq_pe/utilities/colors.dart';

class FloatingAddButton extends StatefulWidget {
  const FloatingAddButton({super.key, required this.buttonName, required this.partyType, required this.partyColor});
  final String buttonName;
   final String partyType;
  final Color partyColor;

  @override
  State<FloatingAddButton> createState() => _FloatingAddButtonState();
}

class _FloatingAddButtonState extends State<FloatingAddButton> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return FloatingActionButton.extended(
      backgroundColor: widget.partyColor,
      onPressed: () {
        Navigator.push(
            context,
            CupertinoPageRoute(
              builder: (context) =>  SelectPartyScreen(
partyColor:   widget.partyColor,
partyType:  widget.partyType,

              ),
            ));
      },
      label: Row(
        children: [
          const Icon(
            Icons.person_add,
            color: LinqPeColors.kWhiteColor,
          ),
          SizedBox(width: size.width*0.05,),
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
