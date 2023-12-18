import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linq_pe/application/contacts/contacts_bloc.dart';
import 'package:linq_pe/application/seondary_party/secondary_party_bloc.dart';
import 'package:linq_pe/application/split_amount/split_amount_bloc.dart';
import 'package:linq_pe/application/view_dto/contact/contact_dto.dart';
import 'package:linq_pe/application/view_dto/transaction/secondary_transaction_dto.dart';
import 'package:linq_pe/application/view_dto/transaction/party_account_dto.dart';
import 'package:linq_pe/presentation/screens/add_amount/screen_add_amount.dart';
import 'package:linq_pe/presentation/screens/each_transaction/screen_each_transaction.dart';
import 'package:linq_pe/presentation/screens/secondary_party/screen_secondary_party.dart';
import 'package:linq_pe/presentation/view_state/add_amount_riverpod/add_amount.dart';
import 'package:linq_pe/presentation/view_state/ledger/ledger.dart';
import 'package:linq_pe/presentation/view_state/secondary_party_riverpod/secondary_party.dart';
import 'package:linq_pe/presentation/widgets/click_button.dart';
import 'package:linq_pe/utilities/colors.dart';
import 'package:linq_pe/utilities/list.dart';

class SplitAmountScreen extends ConsumerWidget {
  const SplitAmountScreen( 
      {super.key, required this.transaction, required this.displayName,required this.contact,});
  final NestedSecondaryTransactionsDTO transaction;
  final String displayName;
  final ContactsDTO contact;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final Size size = MediaQuery.of(context).size;

    List<NestedSecondaryTransactionsDTO> transactionList = [];

    return BlocBuilder<SplitAmountBloc, SplitAmountState>(
      builder: (context, splitstate) {
        double splittedAmount = 0.0;
        if (splitstate is displaySplitAmountList) {
          transactionList = splitstate.transactionList;
          if (transactionList.isNotEmpty) {
            for (var element in transactionList) {
              splittedAmount = splittedAmount + element.givenAmt;
            }
          }
        }
        return Scaffold(
          appBar: PreferredSize(
            preferredSize: size * 0.2,
            child: Container(
              color: LinqPeColors.kGreenColor,
              height: size.height * 0.2,
              child: SafeArea(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          Icons.arrow_back,
                          color: LinqPeColors.kWhiteColor,
                          size: size.width * 0.08,
                        )),
                    SizedBox(
                      width: size.width * 0.5,
                      child: Padding(
                        padding: EdgeInsets.all(size.width * 0.03),
                        child: Column(
                          children: [
                            SizedBox(
                              height: size.height * 0.01,
                            ),
                            Text(
                              displayName,
                              maxLines: 1,
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                  overflow: TextOverflow.ellipsis,
                                  letterSpacing: .5,
                                  fontSize: size.width * 0.06,
                                  color: LinqPeColors.kWhiteColor,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: size.width * 0.5,
                              child: Column(
                                children: [
                                  Text(
                                    'Total Amount : ₹${transaction.givenAmt.toString()}',
                                    style: GoogleFonts.roboto(
                                      textStyle: TextStyle(
                                        letterSpacing: .5,
                                        fontSize: size.width * 0.039,
                                        color: LinqPeColors.kWhiteColor,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    'Splitted : ₹${splittedAmount.toString()}',
                                    style: GoogleFonts.roboto(
                                      textStyle: TextStyle(
                                        letterSpacing: .5,
                                        fontSize: size.width * 0.039,
                                        color: LinqPeColors.kWhiteColor,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    'Balance : ₹${(transaction.givenAmt - splittedAmount).toString()}',
                                    style: GoogleFonts.roboto(
                                      textStyle: TextStyle(
                                        letterSpacing: .5,
                                        fontSize: size.width * 0.039,
                                        color: LinqPeColors.kWhiteColor,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    ClickButton(
                      height: size.height * 0.04,
                      onTap: () {
                        Navigator.push(
                            context,
                            CupertinoPageRoute(
                                builder: (context) => AddAmountScreen(
                                  isRepay: false,
                                   ledgerId: ref.watch(currentLedgerIdProvider),
                                    isGive: false,
                                    transactionRealId: transaction.id,
                                    splitAmount:
                                        '${(transaction.givenAmt - splittedAmount)}',
                                    isSplit: true,
                                    isPay: false,
                                    isAddBalance: false,
                                    partyName: displayName,
                                    isSecondaryPay: false)));
                      },
                      width: size.width * 0.25,
                      text: 'Split',
                      radius: 5,
                      textColor: LinqPeColors.kPinkColor,
                      backGroundColor: LinqPeColors.kWhiteColor,
                      changeColor: LinqPeColors.kWhiteColor.withOpacity(0.5),
                    )
                  ],
                ),
              ),
            ),
          ),
          body: BlocBuilder<ContactsBloc, ContactsState>(
            builder: (context, contactstate) {
              List<ContactsDTO> contactList = [];
              if (contactstate is displayContacts) {
                contactList = contactstate.contactList;
              }

              return SafeArea(
                  child: ColoredBox(
                color: LinqPeColors.kLightBluwWhite,
                child: ListView.builder(
                  itemCount: transactionList.length + 1,
                  itemBuilder: (context, index) {
                    // log('length${transactionList.length}');
                    if (index == transactionList.length) {
                      return SizedBox(
                        height: size.height * 0.01,
                      );
                    }
                    if (!transactionList[index].isSplit) {
                      return const SizedBox();
                    }
                    String transactionString = '';
                    String toName = '';
                    log('listHere${transactionList[index].toContactId.toString()}');
                    final toNameIndex = contactList.indexWhere((element) =>
                        element.contactId ==
                        transactionList[index].toContactId);
                    if (toNameIndex >= 0) {
                      toName = contactList[toNameIndex].displayName;
                    }
                    transactionString =
                        'You splitted ${transactionList[index].givenAmt} to $toName';

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
                        onLongPress: () {
                          Navigator.push(
                              context,
                              CupertinoPageRoute(
                                builder: (context) => EachTransactionScreen(
                                    toName: toName,
                                    transaction: transactionList[index],
                                    contact: contact),
                              ));
                        },
                        onTap: () {
                          log(transactionList[index].balanceAmt.toString());
                          log(transactionList[index].givenAmt.toString());
                          log(transactionList[index].payedAmt.toString());
                          ref.read(secondaryContactIdProvider.notifier).state =
                              transactionList[index].toContactId;
                          final transactionListOfSecondaryParty =
                              transactionList
                                  .where((element) =>
                                      element.isPayed == false &&
                                      element.toContactId ==
                                          transactionList[index].toContactId)
                                  .toList();
                          double recievedAmount = 0;
                          log(transactionListOfSecondaryParty.length
                              .toString());
                          for (var element in transactionListOfSecondaryParty) {
                            recievedAmount = recievedAmount + element.givenAmt;
                          }
                          double balanceAmount =
                              transactionListOfSecondaryParty[
                                      transactionListOfSecondaryParty.length -
                                          1]
                                  .balanceAmt;
                          double payedAmt = transactionListOfSecondaryParty[
                                  transactionListOfSecondaryParty.length - 1]
                              .payedAmt;
                          log(recievedAmount.toString());
                          if (transactionListOfSecondaryParty[
                                          transactionListOfSecondaryParty
                                                  .length -
                                              1]
                                      .secondaryList !=
                                  null &&
                              transactionListOfSecondaryParty[
                                      transactionListOfSecondaryParty.length -
                                          1]
                                  .secondaryList!
                                  .isNotEmpty) {
                            BlocProvider.of<SecondaryPartyBloc>(context).add(
                                SecondaryPartyEvent.addSecondaryPartyList(
                                    transactionList:
                                        transactionListOfSecondaryParty[
                                                transactionListOfSecondaryParty
                                                        .length -
                                                    1]
                                            .secondaryList!));

                            // addSecondaryPartyList(
                            // transactionListOfSecondaryParty[
                            //         transactionListOfSecondaryParty.length - 1]
                            //     .secondaryTransaction!,
                            //     ref);
                          } else {
                            BlocProvider.of<SecondaryPartyBloc>(context).add(
                                const SecondaryPartyEvent.addSecondaryPartyList(
                                    transactionList: []));
                          }
                          addSecondaryBalanceAmount(balanceAmount, ref);
                          addSecondaryReceivedAmount(recievedAmount, ref);
                          addSecondaryPayedAmount(payedAmt, ref);

                          Navigator.push(
                              context,
                              CupertinoPageRoute(
                                builder: (context) => SecondaryPartyScreen(
                                  splittedTransactionId: transaction.id,
                                  transactionRealId: transactionList[index].id,
                                  primaryContact: contact,
                                  secondaryTransactionDTO: PartyAccountDTO(
                                    balanceAmt: balanceAmount,
                                    contactId:
                                        transactionList[index].toContactId,
                                    payedAmt: payedAmt,
                                    recievedAmt: recievedAmount,
                                  ),
                                ),
                              ));
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
                                    child: Text(transactionString,
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
              ));
            },
          ),
        );
      },
    );
  }
}
