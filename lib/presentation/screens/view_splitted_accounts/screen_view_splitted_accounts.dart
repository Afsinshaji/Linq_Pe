import 'dart:developer';
import 'dart:typed_data';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linq_pe/application/contacts/contacts_bloc.dart';
import 'package:linq_pe/application/splitted/splitted_bloc.dart';
import 'package:linq_pe/application/view_dto/contact/contact_dto.dart';
import 'package:linq_pe/application/view_dto/splitted/splitted.dart';
import 'package:linq_pe/presentation/screens/view_splitted_accounts/screen_each_split_account.dart';
import 'package:linq_pe/presentation/widgets/sliver_app_bar.dart';

import 'package:linq_pe/utilities/colors.dart';

class ViewPrimaryAccountsScreen extends StatefulWidget {
  const ViewPrimaryAccountsScreen({super.key,required this.ledgerId});
  final String ledgerId;

  @override
  State<ViewPrimaryAccountsScreen> createState() =>
      _ViewPrimaryAccountsScreenState();
}

class _ViewPrimaryAccountsScreenState extends State<ViewPrimaryAccountsScreen> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<SplittedBloc>(context)
        .add( SplittedEvent.getSplittedList(
          ledgerId: widget.ledgerId
        ));
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return BlocBuilder<SplittedBloc, SplittedState>(
      builder: (context, splitstate) {
        List<SplittedAccountsModelDTO> splitList = [];
        if (splitstate is displaySplittedAccounts) {
          splitList = splitstate.splittedAccountList.reversed.toList();
        }

        return BlocBuilder<ContactsBloc, ContactsState>(
          builder: (context, contactstate) {
            List<ContactsDTO> contactList = [];
            if (contactstate is displayContacts) {
              for (var split in splitList) {
                final contactIndex = contactstate.contactList.indexWhere(
                    (element) =>
                        element.contactId == split.primaryAccountContactId);
                if (contactIndex >= 0) {
                  final contact = contactstate.contactList[contactIndex];

                  if (!contactList.contains(contact)) {
                    contactList.add(contact);
                  }
                }
              }
            }
            return Scaffold(
              body: CustomScrollView(
                slivers: [
                  SliverPersistentHeader(
                      pinned: true,
                      floating: true,
                      delegate: SilverCommonAppbar(
                          titleSpacing: size.width * 0.011,
                          screenSize: size,
                          title: 'Primary Accounts',
                          fontSize: size.width * 0.07,
                          onLeadingArrowPressed: () {
                            Navigator.pop(context);
                          },
                          actions: [])),
                  SliverList(
                      delegate: SliverChildListDelegate([
                    SizedBox(
                      height: size.height * 0.02,
                    )
                         , (splitList.isEmpty) ?
                         
                           Center(
                            child: Image.asset(
                                'assets/images/7117865_3371471.jpg'),
                          ):const SizedBox(),
                        
                  ])),
                  SliverList(
                    delegate: SliverChildBuilderDelegate(
                      // shrinkWrap: true,
                      (context, index) {
                        final splittedContactIndex = contactList.indexWhere(
                            (element) =>
                                element.contactId ==
                                splitList[index].primaryAccountContactId);
                        final splittedContact =
                            contactList[splittedContactIndex];
                        final listOfSplittedAccounts = splitList.where(
                          (element) =>
                              element.primaryAccountContactId ==
                              contactList[index].contactId,
                        );
                        double splittedBalance = 0.0;
                        for (var split in listOfSplittedAccounts) {
                          splittedBalance = splittedBalance + split.balanceAmt;
                        }
                   
                        return Column(
                          children: [
                            EachListTile(
                              nonsplittedBalance:
                                  splittedContact.nonSplittedAmount != null
                                      ? splittedContact.nonSplittedAmount
                                          .toString()
                                      : '0.0',
                              isFromPrimary: true,
                              splittedAvatar: splittedContact.avatar,
                              splittedinitials: splittedContact.initails,
                              splittedname: splittedContact.displayName,
                              onTap: () {
                                Navigator.push(
                                    context,
                                    CupertinoPageRoute(
                                      builder: (context) =>
                                          ScreenEachSplitAccount(
                                              splittedAccountContactId:
                                                  splittedContact.contactId),
                                    ));
                              },
                              size: size,
                              amount: splittedBalance.toString(),
                            ),
                            Divider(
                              color: LinqPeColors.kBlackColor,
                              height: size.height * 0.001,
                              thickness: size.height * 0.0001,
                            ),
                          ],
                        );
                      },
                      childCount: contactList.length,
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}

class EachListTile extends StatelessWidget {
  const EachListTile({
    super.key,
    required this.size,
    required this.splittedname,
    required this.amount,
    required this.onTap,

    // required this.lastTimeofTransaction,
    // required this.contactId,
    required this.splittedAvatar,
    required this.splittedinitials,
    this.isFromPrimary = false,
    this.nonsplittedBalance = '',
  });

  final Size size;

  final String splittedinitials;
  final String splittedname;

  final String amount;
  final Function() onTap;

  final Uint8List? splittedAvatar;
  final bool isFromPrimary;
  final String nonsplittedBalance;
  // final DateTime? lastTimeofTransaction;
  // final String contactId;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: () {
        // showPopupMenu(context, contactId,size);
      },
      onTap: onTap,

      leading: Stack(
        children: [
          splittedAvatar != null && splittedAvatar!.isNotEmpty
              ? CircleAvatar(backgroundImage: MemoryImage(splittedAvatar!))
              : Container(
                  // padding: EdgeInsets.all(size.width * 0.025),
                  width: size.width * 0.1,
                  height: size.width * 0.1,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: LinqPeColors.kBlackColor.withOpacity(0.05),
                      borderRadius: BorderRadius.circular(100)),
                  child: Text(
                    splittedinitials,
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        letterSpacing: .5,
                        fontSize: size.width * 0.04,
                        color: LinqPeColors.kPinkColor,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
        ],
      ),
      title: Text(
        splittedname,
        style: GoogleFonts.poppins(
          textStyle: TextStyle(
            letterSpacing: .5,
            fontSize: size.width * 0.045,
            color: LinqPeColors.kBlackColor,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      // subtitle: Text(
      //   latestTransactionTime(lastTimeofTransaction),
      //   style: GoogleFonts.poppins(
      //     textStyle: TextStyle(
      //       letterSpacing: .5,
      //       fontSize: size.width * 0.03,
      //       color: LinqPeColors.kBlackColor.withOpacity(0.6),
      //       fontWeight: FontWeight.w400,
      //     ),
      //   ),
      // ),
      trailing: isFromPrimary
          ? SizedBox(
              width: size.width * 0.4,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'balance',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            letterSpacing: .5,
                            fontSize: size.width * 0.02,
                            color: LinqPeColors.kBlackColor.withOpacity(0.6),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Text(
                        amount,
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            letterSpacing: .5,
                            fontSize: size.width * 0.04,
                            color: LinqPeColors.kBlackColor,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'non-splitted balance',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            letterSpacing: .5,
                            fontSize: size.width * 0.02,
                            color: LinqPeColors.kBlackColor.withOpacity(0.6),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Text(
                        nonsplittedBalance,
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            letterSpacing: .5,
                            fontSize: size.width * 0.04,
                            color: LinqPeColors.kBlackColor,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          : Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  amount,
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      letterSpacing: .5,
                      fontSize: size.width * 0.045,
                      color: LinqPeColors.kBlackColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Text(
                  'balance',
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      letterSpacing: .5,
                      fontSize: size.width * 0.03,
                      color: LinqPeColors.kBlackColor.withOpacity(0.6),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
    );
  }

  String latestTransactionTime(DateTime? lastTime) {
    if (lastTime != null) {
      DateTime dateTime = lastTime;
      int hour = dateTime.hour;

      if (hour > 12) {
        hour = hour - 12;
      }

      Duration difference = DateTime.now().difference(dateTime);

      if (difference.inMinutes > 10) {
        if (dateTime.day != DateTime.now().day &&
            dateTime.month != DateTime.now().month &&
            dateTime.year != DateTime.now().year) {
          return '${dateTime.day}/${dateTime.month}/${dateTime.year}';
        }

        return '$hour:${dateTime.minute < 10 ? '0${dateTime.minute}' : dateTime.minute}${dateTime.hour > 11 ? 'pm' : 'am'}';
      } else {
        if (difference.inMinutes == 0) {
          return 'just now';
        }
        return '${difference.inMinutes} Min ago';
      }
    } else {
      return '';
    }
  }
}
