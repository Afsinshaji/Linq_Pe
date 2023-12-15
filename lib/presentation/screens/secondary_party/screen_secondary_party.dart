import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linq_pe/application/contacts/contacts_bloc.dart';
import 'package:linq_pe/application/seondary_party/secondary_party_bloc.dart';

import 'package:linq_pe/application/view_dto/contact/contact_dto.dart';
import 'package:linq_pe/application/view_dto/transaction/secondary_transaction_dto.dart';
import 'package:linq_pe/application/view_dto/transaction/party_account_dto.dart';
import 'package:linq_pe/presentation/screens/add_amount/screen_add_amount.dart';
import 'package:linq_pe/presentation/screens/each_transaction/screen_each_transaction.dart';
import 'package:linq_pe/presentation/view_state/secondary_party_riverpod/secondary_party.dart';
import 'package:linq_pe/presentation/widgets/click_button.dart';
import 'package:linq_pe/utilities/colors.dart';
import 'package:linq_pe/utilities/list.dart';

class SecondaryPartyScreen extends ConsumerWidget {
  const SecondaryPartyScreen( 
      {super.key,
    required  this.transactionRealId,required this.splittedTransactionId,
      required this.secondaryTransactionDTO,
      required this.primaryContact});

  final PartyAccountDTO secondaryTransactionDTO;
  final ContactsDTO primaryContact;
 final String transactionRealId;
 final String splittedTransactionId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final Size size = MediaQuery.of(context).size;
    List<NestedSecondaryTransactionsDTO> transactionList = [];
    

    // if (secondaryTransactionDTO.secondaryTransaction != null &&
    //     secondaryTransactionDTO.secondaryTransaction!.isNotEmpty) {
    //   transactionList.addAll(secondaryTransactionDTO.secondaryTransaction!);
    // }

    return BlocBuilder<SecondaryPartyBloc, SecondaryPartyState>(
      builder: (context, displaystate) {
        double balanceAmount = 0.0;
    double payedAmount = 0.0;
    double receivedAmount = ref.watch(secondaryPartyReceivedAmountProvider);
        if (displaystate is displaySecondaryPartyList) {
          transactionList = displaystate.transactionList;
        }
        if (transactionList.isNotEmpty) {
          for (var element in transactionList) {
            payedAmount = payedAmount + element.givenAmt;
          }
         
        }
         balanceAmount = receivedAmount - payedAmount;
        return BlocBuilder<ContactsBloc, ContactsState>(
          builder: (context, contactstate) {
            List<ContactsDTO> contactList = [];
            if (contactstate is displayContacts) {
              contactList = contactstate.contactList;
            }
            final contact = contactList
                .where((element) =>
                    element.contactId == secondaryTransactionDTO.contactId)
                .toList()[0];
            return Scaffold(
              appBar: PreferredSize(
                preferredSize: size * 0.25,
                child: ColoredBox(
                  color: LinqPeColors.kGreenColor,
                  child: Column(
                    children: [
                      AppBar(
                        toolbarHeight: size.height * 0.1,
                        backgroundColor: LinqPeColors.kGreenColor,
                        leadingWidth: size.width * 0.1,
                        title: Row(
                          children: [
                            (contact.avatar != null &&
                                    contact.avatar!.isNotEmpty)
                                ? Container(
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                          color: LinqPeColors.kWhiteColor
                                              .withOpacity(0.5),
                                          width: size.width * 0.005,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(100)),
                                    child: CircleAvatar(
                                        radius: size.width * 0.06,
                                        backgroundImage:
                                            MemoryImage(contact.avatar!)),
                                  )
                                : CircleAvatar(child: Text(contact.initails)),
                            SizedBox(
                              width: size.width * 0.03,
                            ),
                            SizedBox(
                              width: size.width * 0.3,
                              child: Column(
                                children: [
                                  Text(contact.displayName,
                                      maxLines: 1,
                                      style: GoogleFonts.poppins(
                                        textStyle: TextStyle(
                                          overflow: TextOverflow.ellipsis,
                                          letterSpacing: .5,
                                          fontSize: size.width * 0.055,
                                          color: LinqPeColors.kWhiteColor,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      )),
                                  Text('(for ${primaryContact.displayName})',
                                      maxLines: 1,
                                      style: GoogleFonts.poppins(
                                        textStyle: TextStyle(
                                          overflow: TextOverflow.ellipsis,
                                          letterSpacing: .5,
                                          fontSize: size.width * 0.04,
                                          color: LinqPeColors.kWhiteColor,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      )),
                                ],
                              ),
                            ),
                          ],
                        ),
                        leading: IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(
                              Icons.arrow_back,
                              color: LinqPeColors.kWhiteColor,
                              size: size.width * 0.08,
                            )),
                        actions: [
                          ClickButton(
                            textColor: LinqPeColors.kPinkColor,
                            onTap: () {
                              Navigator.push(
                                  context,
                                  CupertinoPageRoute(
                                    builder: (context) => AddAmountScreen(
                                      ledgerId:primaryContact.ledgerId ,
                                      isGive: false,
                                      splittedTransactionId: splittedTransactionId,
                                      transactionRealId: transactionRealId,
                                      isSplit: false,
                                      isSecondaryPay: true,
                                      isPay: true,
                                      isAddBalance: false,
                                      partyName: contact.displayName,
                                      primaryPartyName: primaryContact.displayName,
                                    ),
                                  ));
                            },
                            width: size.width * 0.33,
                            text: 'PAY FOR ₹',
                            radius: 5,
                            backGroundColor: LinqPeColors.kWhiteColor,
                            changeColor:
                                LinqPeColors.kWhiteColor.withOpacity(0.5),
                          ),
                          SizedBox(
                            width: size.width * 0.05,
                          )
                        ],
                      ),
                      AmountsNotifyingContainer(size: size,
                      balanceAmount: balanceAmount,
                      payedAmount:payedAmount ,
                      receivedAmount:receivedAmount ,
                      ),
                    ],
                  ),
                ),
              ),
              body: SafeArea(
                  child: ColoredBox(
                color: LinqPeColors.kLightBluwWhite,
                child: ListView.builder(
                  itemCount: transactionList.length + 1,
                  itemBuilder: (context, index) {
                    bool isSecondaryParty = false;
                    log('length${transactionList.length}');
                    if (index == transactionList.length) {
                      return SizedBox(
                        height: size.height * 0.01,
                      );
                    }
                    String transaction = '';
                    String toName = '';
                    String fromName = '';

                    if (transactionList[index].isPayed) {
                      if (transactionList[index].toContactId == 'You' ||
                          transactionList[index].toContactId.isEmpty) {
                        toName = 'You';
                      } else {
                        toName = contactList
                            .firstWhere((element) =>
                                element.contactId ==
                                transactionList[index].toContactId)
                            .displayName;
                      }
                      if (transactionList[index].fromContactId == 'You' ||
                          transactionList[index].fromContactId.isEmpty) {
                        fromName = 'You';
                      } else {
                        log('${transactionList[index].fromContactId}');
                        fromName = contactList
                            .firstWhere((element) =>
                                element.contactId ==
                                transactionList[index].fromContactId)
                            .displayName;
                      }
                      transaction = '$fromName payed $toName';
                    } else {
                      if (transactionList[index].fromContactId == 'You') {
                        transaction = 'You gave to ${contact.displayName}';
                      } else {
                        if (transactionList[index].toContactId == 'You') {
                          transaction =
                              'You received from ${contact.displayName}';
                        } else {
                          toName = contactList
                              .firstWhere((element) =>
                                  element.contactId ==
                                  transactionList[index].toContactId)
                              .displayName;
                          transaction =
                              '$toName received from ${contact.displayName}';
                          //The game begins
                          isSecondaryParty = true;
                        }
                      }
                    }

                    return Container(
                      margin: EdgeInsets.symmetric(
                          horizontal: size.width * 0.03,
                          vertical: size.width * 0.03),
                      padding: EdgeInsets.symmetric(
                          horizontal: size.width * 0.03,
                          vertical: size.width * 0.05),
                      decoration:
                          const BoxDecoration(color: LinqPeColors.kWhiteColor),
                      child: InkWell(
                        onTap: () {

                            Navigator.push(
                              context,
                              CupertinoPageRoute(
                                builder: (context) => EachTransactionScreen(
                                    toName: toName,
                                    transaction: transactionList[index],
                                    isSecondaryParty: true,
                                    secondaryPartyName: contact.displayName,
                                    contact:primaryContact ),
                              ));
                          if (isSecondaryParty) {}
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: size.width * 0.47,
                              child: Column(
                                // mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: size.width * 0.47,
                                    child: Text('$transaction ',
                                        style: GoogleFonts.roboto(
                                          textStyle: TextStyle(
                                            // overflow: TextOverflow.ellipsis,
                                            letterSpacing: .5,
                                            fontSize: size.width * 0.038,
                                            color: LinqPeColors.kBlackColor,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        )),
                                  ),
                                  Text(
                                      '${transactionList[index].timeOfTrans.day} ${LinqPeList.monthNames[transactionList[index].timeOfTrans.month - 1]} ${transactionList[index].timeOfTrans.year} . ${transactionList[index].timeOfTrans.hour}:${transactionList[index].timeOfTrans.minute}',
                                      style: GoogleFonts.roboto(
                                        textStyle: TextStyle(
                                          letterSpacing: .5,
                                          fontSize: size.width * 0.03,
                                          color: LinqPeColors.kBlackColor,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      )),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: size.width * 0.33,
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: Text(
                                    '₹ ${transactionList[index].givenAmt} ',
                                    style: GoogleFonts.roboto(
                                      textStyle: TextStyle(
                                        letterSpacing: .5,
                                        fontSize: size.width * 0.045,
                                        color: LinqPeColors.kBlackColor,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    )),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              )),
              // bottomSheet: Container(
              //   color: LinqPeColors.kWhiteColor,
              //   height: size.height * 0.2,
              //   padding: EdgeInsets.all(size.width * 0.02),
              //   child: Column(
              //     children: [
              //       Offstage(
              //         offstage: false,
              //         child: Center(
              //           child: Column(
              //             children: [
              //               const Text('Start Adding Transactions'),
              //               const Icon(Icons.arrow_downward_rounded),
              //               SizedBox(
              //                 height: size.height * 0.03,
              //               )
              //             ],
              //           ),
              //         ),
              //       ),
              //       Row(
              //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //         children: [
              //           ClickButton(
              //             onTap: () {
              //               Navigator.push(
              //                   context,
              //                   CupertinoPageRoute(
              //                     builder: (context) => AddAmountScreen(
              //                       isPay: false,
              //                       isGive: true,
              //                       partyName: contact.displayName,
              //                     ),
              //                   ));
              //             },
              //             width: size.width * 0.4,
              //             text: 'YOU GAVE ₹',
              //             radius: 5,
              //             backGroundColor: LinqPeColors.kPinkColor,
              //             changeColor: LinqPeColors.kPinkColor.withOpacity(0.5),
              //           ),
              //           ClickButton(
              //             onTap: () {
              //               Navigator.push(
              //                   context,
              //                   CupertinoPageRoute(
              //                     builder: (context) => AddAmountScreen(
              //                       isPay: false,
              //                       isGive: false,
              //                       partyName: contact.displayName,
              //                     ),
              //                   ));
              //             },
              //             width: size.width * 0.4,
              //             text: 'YOU GOT ₹',
              //             radius: 5,
              //             backGroundColor: LinqPeColors.kGreenColor,
              //             changeColor: LinqPeColors.kGreenColor.withOpacity(0.5),
              //           ),
              //         ],
              //       )
              //     ],
              //   ),
              // ),
            );
          },
        );
      },
    );
  }
}

class AmountsNotifyingContainer extends StatelessWidget {
  const AmountsNotifyingContainer({
    super.key,
    required this.size,
   required this.balanceAmount,required this.receivedAmount,required this.payedAmount, 
  });

  final Size size;
  final double balanceAmount;
  final double receivedAmount;
  final double payedAmount;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: LinqPeColors.kWhiteColor,
          borderRadius: BorderRadius.circular(5)),
      height: size.height * 0.1,
      margin: EdgeInsets.symmetric(
          horizontal: size.width * 0.03, vertical: size.height * 0.01),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AmountNotifierColumn(
              amount:
                  receivedAmount.toString(),
              size: size,
              text: 'Received'),
          AmountNotifierDivider(size: size),
          AmountNotifierColumn(
              amount: payedAmount.toString(),
              size: size,
              text: 'Payed'),
          AmountNotifierDivider(size: size),
          AmountNotifierColumn(
              amount: balanceAmount.toString(),
              size: size,
              text: 'Balance'),
        ],
      ),
    );
  }
}

class AmountNotifierDivider extends StatelessWidget {
  const AmountNotifierDivider({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width * 0.001,
      height: size.width * 0.15,
      color: LinqPeColors.kBlackColor.withOpacity(0.4),
    );
  }
}

class AmountNotifierColumn extends StatelessWidget {
  const AmountNotifierColumn({
    super.key,
    required this.amount,
    required this.size,
    required this.text,
  });

  final String amount;
  final Size size;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          amount,
          style: GoogleFonts.poppins(
            textStyle: TextStyle(
              letterSpacing: .5,
              fontSize: size.width * 0.042,
              color: LinqPeColors.kBlackColor,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        Text(
          text,
          style: GoogleFonts.poppins(
            textStyle: TextStyle(
              letterSpacing: .5,
              fontSize: size.width * 0.035,
              color: LinqPeColors.kBlackColor.withOpacity(0.6),
              fontWeight: FontWeight.w500,
            ),
          ),
        )
      ],
    );
  }
}
