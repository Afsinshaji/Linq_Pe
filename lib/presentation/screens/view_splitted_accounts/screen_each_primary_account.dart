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
import 'package:linq_pe/application/view_dto/splitted/splitted.dart';
import 'package:linq_pe/application/view_dto/transaction/secondary_transaction_dto.dart';
import 'package:linq_pe/application/view_dto/transaction/party_account_dto.dart';
import 'package:linq_pe/presentation/screens/each_transaction/screen_each_transaction.dart';
import 'package:linq_pe/presentation/screens/secondary_party/screen_secondary_party.dart';
import 'package:linq_pe/presentation/screens/split_amount/screen_split_amount.dart';
import 'package:linq_pe/presentation/view_state/add_amount_riverpod/add_amount.dart';
import 'package:linq_pe/presentation/view_state/secondary_party_riverpod/secondary_party.dart';
import 'package:linq_pe/presentation/view_state/view_party_riverpod.dart/view_party.dart';
import 'package:linq_pe/utilities/colors.dart';
import 'package:linq_pe/utilities/list.dart';

class EachPrimaryAccountScreen extends StatefulWidget {
  const EachPrimaryAccountScreen({
    super.key,
    required this.contact,
    required this.splittedAccount,
  });
  final ContactsDTO contact;
  final SplittedAccountsModelDTO splittedAccount;

  @override
  State<EachPrimaryAccountScreen> createState() =>
      _EachPrimaryAccountScreenState();
}

class _EachPrimaryAccountScreenState extends State<EachPrimaryAccountScreen> {
  double balanceForPay = 0.0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    double splittedAmount = 0.0;
    String received = widget.splittedAccount.recievedAmt.toString();
    String balance = widget.splittedAccount.balanceAmt.toString();
    String payed = widget.splittedAccount.payedAmt.toString();
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: size * 0.2,
        child: ColoredBox(
          color: LinqPeColors.kGreenColor,
          child: Column(
            children: [
              AppBar(
                backgroundColor: LinqPeColors.kGreenColor,
                leadingWidth: size.width * 0.1,
                title: Row(
                  children: [
                    (widget.contact.avatar != null &&
                            widget.contact.avatar!.isNotEmpty)
                        ? Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color:
                                      LinqPeColors.kWhiteColor.withOpacity(0.5),
                                  width: size.width * 0.005,
                                ),
                                borderRadius: BorderRadius.circular(100)),
                            child: CircleAvatar(
                                radius: size.width * 0.06,
                                backgroundImage:
                                    MemoryImage(widget.contact.avatar!)),
                          )
                        : CircleAvatar(child: Text(widget.contact.initails)),
                    SizedBox(
                      width: size.width * 0.01,
                    ),
                    SizedBox(
                      width: size.width * 0.5,
                      child: Text(widget.contact.displayName,
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              overflow: TextOverflow.ellipsis,
                              letterSpacing: .5,
                              fontSize: size.width * 0.05,
                              color: LinqPeColors.kWhiteColor,
                              fontWeight: FontWeight.w500,
                            ),
                          )),
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
              ),
              AmountNotifyingContainer(
                  size: size,
                  received: received,
                  payed: payed,
                  balance: balance)
            ],
          ),
        ),
      ),
      body: SafeArea(
          child: ColoredBox(
        color: LinqPeColors.kLightBluwWhite,
        child: BlocBuilder<ContactsBloc, ContactsState>(
          builder: (context, contactstate) {
            List<ContactsDTO> contactList = [];
            if (contactstate is displayContacts) {
              contactList = contactstate.contactList;
            }

            List<NestedSecondaryTransactionsDTO> transactionList = [];
            transactionList = widget.splittedAccount.transactionList ?? [];

            final splitList = transactionList
                .where((element) => element.isSplit == true)
                .toList();
            if (splitList.isNotEmpty) {
              for (var e in splitList) {
                splittedAmount = splittedAmount + e.givenAmt;
              }
            }
            return ListView.builder(
              itemCount: transactionList.length + 1,
              itemBuilder: (context, index) {
                bool isSecondaryParty = false;
                log('length${transactionList.length}');
                if (index == transactionList.length) {
                  return SizedBox(
                    height: size.height * 0.15,
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
                      transactionList[index].fromContactId.isEmpty ||
                      transactionList[index].fromContactId ==
                          widget.contact.contactId) {
                    fromName = 'You';
                  } else {
                    // log('${transactionList[index].fromContactId}');
                    fromName = contactList
                        .firstWhere((element) =>
                            element.contactId ==
                            transactionList[index].fromContactId)
                        .displayName;
                  }
                  transaction = '$fromName payed $toName';
                } else {
                  if (transactionList[index].fromContactId == 'You') {
                    transaction = 'You gave to ${widget.contact.displayName}';
                    if (transactionList[index].isAddBalance) {
                      transaction =
                          'You Added Balance to ${widget.contact.displayName}';
                    } else if (transactionList[index].isSplit) {
                      toName = contactList
                          .firstWhere((element) =>
                              element.contactId ==
                              transactionList[index].toContactId)
                          .displayName;
                      transaction = 'You Splitted Balance to $toName';
                    }
                  } else {
                    if (transactionList[index].toContactId == 'You') {
                      transaction =
                          'Received from ${widget.contact.displayName}';
                    } else {
                      toName = contactList
                          .firstWhere((element) =>
                              element.contactId ==
                              transactionList[index].toContactId)
                          .displayName;
                      transaction =
                          //${widget.contact.displayName}
                          'Received from $toName';
                      //The game begins
                      isSecondaryParty = true;
                    }
                  }
                }

                return EachTransactionContainer(
                    isGive: transactionList[index].isGive,
                    toName: toName,
                    contact: widget.contact,
                    displayName: widget.contact.displayName,
                    isPay: transactionList[index].isPayed,
                    isGet: transactionList[index].isGet,
                    primaryContactName: widget.contact.displayName,
                    index: index,
                    size: size,
                    isSecondaryParty: isSecondaryParty,
                    transactionList: transactionList,
                    transaction: transaction);
              },
            );
          },
        ),
      )),
    );
  }
}

class AmountNotifyingContainer extends ConsumerWidget {
  const AmountNotifyingContainer({
    super.key,
    required this.size,
    required this.received,
    required this.payed,
    required this.balance,
  });

  final Size size;
  final String received;
  final String payed;
  final String balance;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      addPrimaryBalanceAmount(double.parse(balance), ref);
    });

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
          AmountNotifierColumn(amount: balance, size: size, text: 'Balance'),
          AmountNotifierDivider(size: size),
          AmountNotifierColumn(amount: payed, size: size, text: 'Payed'),
          AmountNotifierDivider(size: size),
          AmountNotifierColumn(amount: received, size: size, text: 'Received'),
        ],
      ),
    );
  }
}

class EachTransactionContainer extends ConsumerWidget {
  const EachTransactionContainer({
    required this.toName,
    super.key,
    required this.displayName,
    required this.isPay,
    required this.size,
    required this.isSecondaryParty,
    required this.transactionList,
    required this.transaction,
    required this.index,
    required this.primaryContactName,
    required this.isGet,
    required this.contact,
    required this.isGive,
  });

  final Size size;
  final bool isSecondaryParty;
  final List<NestedSecondaryTransactionsDTO> transactionList;
  final String transaction;
  final int index;
  final String primaryContactName;
  final bool isPay;
  final String displayName;
  final bool isGet;
  final ContactsDTO contact;
  final String toName;
  final bool isGive;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
        margin: EdgeInsets.symmetric(
            horizontal: size.width * 0.03, vertical: size.width * 0.03),
        padding: EdgeInsets.symmetric(
          horizontal: isGet ? size.width * 0.025 : size.width * 0.03,
        ),
        decoration: BoxDecoration(
          color: LinqPeColors.kWhiteColor,
          border: isGet
              ? Border.all(
                  color: LinqPeColors.kGreenColor, width: size.width * 0.003)
              : null,
        ),
        child: InkWell(
          onLongPress: () {
            if (isGet) {
              Navigator.push(
                  context,
                  CupertinoPageRoute(
                    builder: (context) => EachTransactionScreen(
                        toName: toName,
                        transaction: transactionList[index],
                        contact: contact),
                  ));
            }
          },
          onTap: () {
            if (isSecondaryParty) {
              log(transactionList[index].balanceAmt.toString());
              log(transactionList[index].givenAmt.toString());
              log(transactionList[index].payedAmt.toString());
              ref.read(secondaryContactIdProvider.notifier).state =
                  transactionList[index].toContactId;
              final transactionListOfSecondaryParty = transactionList
                  .where((element) =>
                      element.isPayed == false &&
                      element.toContactId == transactionList[index].toContactId)
                  .toList();
              double recievedAmount = 0;
              log(transactionListOfSecondaryParty.length.toString());
              for (var element in transactionListOfSecondaryParty) {
                recievedAmount = recievedAmount + element.givenAmt;
              }
              double balanceAmount = transactionListOfSecondaryParty[
                      transactionListOfSecondaryParty.length - 1]
                  .balanceAmt;
              double payedAmt = transactionListOfSecondaryParty[
                      transactionListOfSecondaryParty.length - 1]
                  .payedAmt;
              log(recievedAmount.toString());
              if (transactionListOfSecondaryParty[
                              transactionListOfSecondaryParty.length - 1]
                          .secondaryList !=
                      null &&
                  transactionListOfSecondaryParty[
                          transactionListOfSecondaryParty.length - 1]
                      .secondaryList!
                      .isNotEmpty) {
                BlocProvider.of<SecondaryPartyBloc>(context).add(
                    SecondaryPartyEvent.addSecondaryPartyList(
                        transactionList: transactionListOfSecondaryParty[
                                transactionListOfSecondaryParty.length - 1]
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
                      splittedTransactionId: '',
                      transactionRealId: '',
                      primaryContact: contact,
                      secondaryTransactionDTO: PartyAccountDTO(
                        balanceAmt: balanceAmount,
                        contactId: transactionList[index].toContactId,
                        payedAmt: payedAmt,
                        recievedAmt: recievedAmount,
                        // secondaryTransaction: transactionListOfSecondaryParty[
                        //         transactionListOfSecondaryParty.length - 1]
                        //     .secondaryTransaction,
                      ),
                    ),
                  ));
            } else if (isGet) {
              if (transactionList[index].secondaryList != null) {
                BlocProvider.of<SplitAmountBloc>(context).add(
                    SplitAmountEvent.addSplitAmountList(
                        transactionList:
                            transactionList[index].secondaryList!));
              }
              Navigator.push(
                  context,
                  CupertinoPageRoute(
                      builder: (context) => SplitAmountScreen(
                            contact: contact,
                            displayName: displayName,
                            transaction: transactionList[index],
                          )));
            } else {
              Navigator.push(
                  context,
                  CupertinoPageRoute(
                    builder: (context) => EachTransactionScreen(
                        toName: toName,
                        transaction: transactionList[index],
                        contact: contact),
                  ));
            }
          },
          child: Row(
            //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                // height: constraints.maxHeight,
                width: size.width * 0.4,
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: size.width * 0.05),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: size.width * 0.4,
                        child: Text('$transaction ',
                            style: GoogleFonts.roboto(
                              textStyle: TextStyle(
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
              ),
              Container(
                height: size.height * 0.12,
                color: LinqPeColors.kBlackColor.withOpacity(0.05),
                width: size.width * 0.24,
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                      isPay || isGive
                          ? '₹ ${transactionList[index].givenAmt}'
                          : '',
                      style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                          letterSpacing: .5,
                          fontSize: size.width * 0.04,
                          color: LinqPeColors.kGreenColor,
                          fontWeight: FontWeight.w500,
                        ),
                      )),
                ),
              ),
              SizedBox(
                width: size.width * 0.24,
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                      isPay || isGive
                          ? ''
                          : '₹ ${transactionList[index].givenAmt}',
                      style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                          letterSpacing: .5,
                          fontSize: size.width * 0.04,
                          color: LinqPeColors.kGreenColor,
                          fontWeight: FontWeight.w500,
                        ),
                      )),
                ),
              ),
            ],
          ),
        ));
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
