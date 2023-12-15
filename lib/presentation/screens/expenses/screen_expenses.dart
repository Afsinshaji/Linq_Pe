import 'dart:developer';
import 'dart:typed_data';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linq_pe/application/party/expense/expense_bloc.dart';
import 'package:linq_pe/application/view_dto/contact/contact_dto.dart';
import 'package:linq_pe/presentation/screens/view_party/screen_view_party.dart';
import 'package:linq_pe/presentation/view_state/add_amount_riverpod/add_amount.dart';

import 'package:linq_pe/presentation/widgets/sliver_app_bar.dart';
import 'package:linq_pe/utilities/colors.dart';

class ExpensesScreen extends StatefulWidget {
  const ExpensesScreen({super.key, required this.ledgerId});
   
  final String ledgerId;

  @override
  State<ExpensesScreen> createState() => _ExpensesScreenState();
}

class _ExpensesScreenState extends State<ExpensesScreen> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<ExpenseBloc>(context)
        .add( ExpenseEvent.getExpenseAccountList(ledgerId: widget.ledgerId));
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    List<ContactsDTO> expenseAccountsList = [];
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverPersistentHeader(
            pinned: true,
            floating: true,
            delegate: SilverCommonAppbar(
                titleSpacing: size.width * 0.11,
                screenSize: size,
                title: 'Expenses',
                onLeadingArrowPressed: () {
                  Navigator.pop(context);
                },
                actions: [])),
        SliverList(
            delegate: SliverChildListDelegate([
          SizedBox(
            height: size.height * 0.02,
          ),
        
        ])),
        BlocBuilder<ExpenseBloc, ExpenseState>(
          builder: (context, state) {
            if (state is displayExpenseAccounts) {
              expenseAccountsList = state.expenseAccountsList;
            }
           

            if (expenseAccountsList.isNotEmpty) {
              //sort according to time and reverse it
              final List<ContactsDTO> sortingPartyList =
                  List.from(expenseAccountsList);
              sortingPartyList.sort((a, b) =>
                  a.lastTimeOfTransaction!.compareTo(b.lastTimeOfTransaction!));
              expenseAccountsList = sortingPartyList.reversed.toList();
            }

            log(expenseAccountsList.toString());
            return SliverList(
                delegate: SliverChildBuilderDelegate(
                    (context, index) =>  
                      expenseAccountsList.isEmpty? 
               Center(
                child: Image.asset('assets/images/7117865_3371471.jpg'),
              ):
             Column(
                          children: [
                            EachListTile(
                                size: size,
                                initials: expenseAccountsList[index].initails,
                                name: expenseAccountsList[index].displayName,
                                amount: '',
                                onTap: () {
                                  //  ref.read(fromContactIdProvider.notifier).state =
                                  //               partyList[index].contactId;
                                  Navigator.push(
                                      context,
                                      CupertinoPageRoute(
                                        builder: (context) => ViewPartyScreen(
                                            contact: expenseAccountsList[index],
                                            isExpense: true),
                                      ));
                                },
                                avatar: expenseAccountsList[index].avatar,
                                lastTimeofTransaction:
                                    expenseAccountsList[index]
                                        .lastTimeOfTransaction,
                                contactId:
                                    expenseAccountsList[index].contactId),
                            Divider(
                              color: LinqPeColors.kBlackColor,
                              height: size.height * 0.001,
                              thickness: size.height * 0.0001,
                            )
                          ],
                        ),
                    childCount:expenseAccountsList.isEmpty?1: expenseAccountsList.length));
          },
        ),
      ],
    ));
  }
}

class EachListTile extends StatelessWidget {
  const EachListTile({
    super.key,
    required this.size,
    required this.initials,
    required this.name,
    required this.amount,
    required this.onTap,
    required this.avatar,
    required this.lastTimeofTransaction,
    required this.contactId,
  });

  final Size size;
  final String initials;
  final String name;
  final String amount;
  final Function() onTap;
  final Uint8List? avatar;
  final DateTime? lastTimeofTransaction;
  final String contactId;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: () {
        // log('look');
        // showPopupMenu(context, contactId,size);
      },
      onTap: onTap,
      leading: avatar != null && avatar!.isNotEmpty
          ? CircleAvatar(backgroundImage: MemoryImage(avatar!))
          : Container(
              // padding: EdgeInsets.all(size.width * 0.025),
              width: size.width * 0.1,
              height: size.width * 0.1,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: LinqPeColors.kBlackColor.withOpacity(0.05),
                  borderRadius: BorderRadius.circular(100)),
              child: Text(
                initials,
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
      title: Text(
        name,
        style: GoogleFonts.poppins(
          textStyle: TextStyle(
            letterSpacing: .5,
            fontSize: size.width * 0.05,
            color: LinqPeColors.kBlackColor,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      subtitle: Text(
        latestTransactionTime(lastTimeofTransaction),
        style: GoogleFonts.poppins(
          textStyle: TextStyle(
            letterSpacing: .5,
            fontSize: size.width * 0.03,
            color: LinqPeColors.kBlackColor.withOpacity(0.6),
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      // trailing: Column(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   children: [
      //     Text(
      //       amount,
      //       style: GoogleFonts.poppins(
      //         textStyle: TextStyle(
      //           letterSpacing: .5,
      //           fontSize: size.width * 0.045,
      //           color: LinqPeColors.kBlackColor,
      //           fontWeight: FontWeight.w600,
      //         ),
      //       ),
      //     ),
      //     Text(
      //       'balance',
      //       style: GoogleFonts.poppins(
      //         textStyle: TextStyle(
      //           letterSpacing: .5,
      //           fontSize: size.width * 0.03,
      //           color: LinqPeColors.kBlackColor.withOpacity(0.6),
      //           fontWeight: FontWeight.w400,
      //         ),
      //       ),
      //     ),
      //   ],
      // ),
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
