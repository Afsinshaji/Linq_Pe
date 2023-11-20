import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:linq_pe/application/view_dto/contact/contact_dto.dart';
import 'package:linq_pe/presentation/widgets/click_button.dart';
import 'package:linq_pe/utilities/colors.dart';

class ViewPartyScreen extends StatefulWidget {
  const ViewPartyScreen({super.key, required this.contact});
  final ContactsDTO contact;

  @override
  State<ViewPartyScreen> createState() => _ViewPartyScreenState();
}

class _ViewPartyScreenState extends State<ViewPartyScreen> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: size*0.23,
        
        child: ColoredBox(
          color: LinqPeColors.kPinkColor,
          child: Column(
            children: [
              AppBar(
                backgroundColor: LinqPeColors.kPinkColor,
                leadingWidth: size.width*0.1,
               
                title: Row(
              
                  children: [
                    (widget.contact.avatar != null && widget.contact.avatar!.isNotEmpty)
                        ? Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: LinqPeColors.kWhiteColor.withOpacity(0.5),
                              width: size.width*0.005,
                            ),borderRadius: BorderRadius.circular(100)
                          ),
                          child: CircleAvatar(
                            radius: size.width*0.06,
                              backgroundImage: MemoryImage(widget.contact.avatar!)),
                        )
                        : CircleAvatar(child: Text(widget.contact.initails)),
                        SizedBox(width: size.width*0.03,),
                    Text(widget.contact.displayName,
                        style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    overflow: TextOverflow.ellipsis,
                    letterSpacing: .5,
                    fontSize: size.width * 0.055,
                    color: LinqPeColors.kWhiteColor,
                    fontWeight: FontWeight.w500,
                  ),
                )
                    ),
                  ],
                ),
                leading: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon:  Icon(
                      Icons.arrow_back,
                      color: LinqPeColors.kWhiteColor,
                      size: size.width*0.08,
                    )),
              ),

              Container(
                
                decoration: BoxDecoration(color: LinqPeColors.kWhiteColor,
                borderRadius: BorderRadius.circular(5)
                ),
                height:size.height*0.13,
               margin: EdgeInsets.symmetric(horizontal:size.width*0.05,vertical: size.height*0.01 ),
                child: Row(),
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(
          child: SizedBox(
        height: size.height,
      )),
      bottomSheet: Container(
        color: LinqPeColors.kWhiteColor,
        height: size.height * 0.2,
        padding: EdgeInsets.all(size.width * 0.02),
        child: Column(
          children: [
            Offstage(
              offstage: false,
              child: Center(
                child: Column(
                  children: [
                    const Text('Start Adding Transactions'),
                    const Icon(Icons.arrow_downward_rounded),
                    SizedBox(
                      height: size.height * 0.03,
                    )
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ClickButton(
                  onTap: () {},
                  width: size.width * 0.4,
                  text: 'YOU GAVE ₹',
                  radius: 5,
                  backGroundColor: LinqPeColors.kPinkColor,
                  changeColor: LinqPeColors.kPinkColor.withOpacity(0.5),
                ),
                ClickButton(
                  onTap: () {},
                  width: size.width * 0.4,
                  text: 'YOU GOT ₹',
                  radius: 5,
                  backGroundColor: LinqPeColors.kGreenColor,
                  changeColor: LinqPeColors.kGreenColor.withOpacity(0.5),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
