import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linq_pe/utilities/colors.dart';

class SilverCommonAppbar extends SliverPersistentHeaderDelegate {
  SilverCommonAppbar( {
    required this.onLeadingArrowPressed,
    required this.actions,
    this.title = '',
 required   this.screenSize
  });
  final Function() onLeadingArrowPressed;
  final List<Widget> actions;
  final String title;
  final Size screenSize;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    final Size size = MediaQuery.of(context).size;
    return AppBar(
      titleSpacing: size.width * 0.15,
      toolbarHeight: size.height*0.1,
      title: Text(
        title,
        style: GoogleFonts.poppins(
          textStyle: TextStyle(
            letterSpacing: .8,
            fontSize: size.width * 0.08,
            color: LinqPeColors.kWhiteColor,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      leadingWidth: size.width * 0.2,
      leading: IconButton(
          onPressed: onLeadingArrowPressed,
          icon: const Icon(
            Icons.arrow_back_ios,
            color: LinqPeColors.kWhiteColor,
          )),
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(50),
        bottomRight: Radius.circular(50),
      )),
      backgroundColor: LinqPeColors.kPinkColor,
      actions: actions,
    );
  }

  @override
  double get maxExtent => screenSize.height*0.13;

  @override
  double get minExtent => screenSize.height*0.13;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      true;
}
