import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linq_pe/application/contacts/contacts_bloc.dart';
import 'package:linq_pe/application/transactions/transactions_bloc.dart';

import 'package:linq_pe/application/view_dto/contact/contact_dto.dart';
import 'package:linq_pe/application/view_dto/transaction/secondary_transaction_dto.dart';
import 'package:linq_pe/application/view_dto/transaction/transaction_dto.dart';
import 'package:linq_pe/presentation/screens/add_amount/screen_add_amount.dart';
import 'package:linq_pe/presentation/screens/secondary_party/screen_secondary_party.dart';
import 'package:linq_pe/presentation/view_state/add_amount_riverpod/add_amount.dart';
import 'package:linq_pe/presentation/widgets/click_button.dart';
import 'package:linq_pe/utilities/colors.dart';
import 'package:linq_pe/utilities/list.dart';

class ViewPartyScreen extends StatefulWidget {
  const ViewPartyScreen({super.key, required this.contact});
  final ContactsDTO contact;

  @override
  State<ViewPartyScreen> createState() => _ViewPartyScreenState();
}

class _ViewPartyScreenState extends State<ViewPartyScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    BlocProvider.of<TransactionsBloc>(context).add(
        TransactionsEvent.getTransactionsList(
            contactId: widget.contact.contactId));
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: size * 0.2,
        child: ColoredBox(
          color: LinqPeColors.kPinkColor,
          child: Column(
            children: [
              AppBar(
                backgroundColor: LinqPeColors.kPinkColor,
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
                      width: size.width * 0.29,
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
                actions: [
                  ClickButton(
                    textColor: LinqPeColors.kPinkColor,
                    onTap: () {
                      Navigator.push(
                          context,
                          CupertinoPageRoute(
                            builder: (context) => AddAmountScreen(
                              isSecondaryPay: false,
                              isPay: true,
                              isGive: false,
                              partyName: widget.contact.displayName,
                            ),
                          ));
                    },
                    width: size.width * 0.33,
                    text: 'PAY FOR ₹',
                    radius: 5,
                    backGroundColor: LinqPeColors.kWhiteColor,
                    changeColor: LinqPeColors.kWhiteColor.withOpacity(0.5),
                  ),
                  SizedBox(
                    width: size.width * 0.05,
                  )
                ],
              ),
              BlocBuilder<TransactionsBloc, TransactionsState>(
                builder: (context, state) {
                  String received = '0';
                  String balance = '0';
                  String payed = '0';
                  if (state is displayTransactions) {
                    if (state.transaction != null) {
                      received = state.transaction!.recievedAmt.toString();
                      balance = state.transaction!.balanceAmt.toString();
                      payed = state.transaction!.payedAmt.toString();
                    }
                  }
                  return Container(
                    decoration: BoxDecoration(
                        color: LinqPeColors.kWhiteColor,
                        borderRadius: BorderRadius.circular(5)),
                    height: size.height * 0.1,
                    margin: EdgeInsets.symmetric(
                        horizontal: size.width * 0.03,
                        vertical: size.height * 0.01),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        AmountNotifierColumn(
                            amount: received, size: size, text: 'Received'),
                        AmountNotifierDivider(size: size),
                        AmountNotifierColumn(
                            amount: payed, size: size, text: 'Payed'),
                        AmountNotifierDivider(size: size),
                        AmountNotifierColumn(
                            amount: balance, size: size, text: 'Balance'),
                      ],
                    ),
                  );
                },
              ),
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
            return BlocBuilder<TransactionsBloc, TransactionsState>(
              builder: (context, state) {
                List<SecondaryTransactionsDTO> transactionList = [];
                if (state is displayTransactions) {
                  if (state.transaction != null &&
                      state.transaction!.secondaryTransaction != null) {
                    transactionList = state.transaction!.secondaryTransaction!;
                  }
                }

                return ListView.builder(
                  itemCount: transactionList.length + 1,
                  itemBuilder: (context, index) {
                    bool isSecondaryParty = false;
                    log('length${transactionList.length}');
                    if (index == transactionList.length) {
                      return SizedBox(
                        height: size.height * 0.3,
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
                        transaction =
                            'You gave to ${widget.contact.displayName}';
                      } else {
                        if (transactionList[index].toContactId == 'You') {
                          transaction =
                              'You received from ${widget.contact.displayName}';
                        } else {
                          toName = contactList
                              .firstWhere((element) =>
                                  element.contactId ==
                                  transactionList[index].toContactId)
                              .displayName;
                          transaction =
                              '$toName received from ${widget.contact.displayName}';
                          //The game begins
                          isSecondaryParty = true;
                        }
                      }
                    }

                    return EachTransactionContainer(
                        primaryContactName: widget.contact.displayName,
                        index: index,
                        size: size,
                        isSecondaryParty: isSecondaryParty,
                        transactionList: transactionList,
                        transaction: transaction);
                  },
                );
              },
            );
          },
        ),
      )),
      bottomSheet: BlocBuilder<TransactionsBloc, TransactionsState>(
        builder: (context, state) {
          List<SecondaryTransactionsDTO>? transactionList = [];
          if (state is displayTransactions) {
            if (state.transaction != null) {
              transactionList = state.transaction!.secondaryTransaction;
            }
          }
          return Container(
            color: LinqPeColors.kWhiteColor,
            height:transactionList == null || transactionList.isEmpty
                      ?size.height * 0.2 : size.height * 0.11,
            padding: EdgeInsets.all(size.width * 0.02),
            child: Column(
              children: [
                Offstage(
                  offstage: transactionList == null || transactionList.isEmpty
                      ? false
                      : true,
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
                      onTap: () {
                        Navigator.push(
                            context,
                            CupertinoPageRoute(
                              builder: (context) => AddAmountScreen(
                                isSecondaryPay: false,
                                isPay: false,
                                isGive: true,
                                partyName: widget.contact.displayName,
                              ),
                            ));
                      },
                      width: size.width * 0.4,
                      text: 'YOU GAVE ₹',
                      radius: 5,
                      backGroundColor: LinqPeColors.kPinkColor,
                      changeColor: LinqPeColors.kPinkColor.withOpacity(0.5),
                    ),
                    ClickButton(
                      onTap: () {
                        Navigator.push(
                            context,
                            CupertinoPageRoute(
                              builder: (context) => AddAmountScreen(
                                isSecondaryPay: false,
                                isPay: false,
                                isGive: false,
                                partyName: widget.contact.displayName,
                              ),
                            ));
                      },
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
          );
        },
      ),
    );
  }
}

class EachTransactionContainer extends ConsumerWidget {
  const EachTransactionContainer({
    super.key,
    required this.size,
    required this.isSecondaryParty,
    required this.transactionList,
    required this.transaction,
    required this.index,
    required this.primaryContactName,
  });

  final Size size;
  final bool isSecondaryParty;
  final List<SecondaryTransactionsDTO> transactionList;
  final String transaction;
  final int index;
  final String primaryContactName;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: size.width * 0.03, vertical: size.width * 0.03),
      padding: EdgeInsets.symmetric(
          horizontal: size.width * 0.03, vertical: size.width * 0.05),
      decoration: const BoxDecoration(color: LinqPeColors.kWhiteColor),
      child: InkWell(
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

            Navigator.push(
                context,
                CupertinoPageRoute(
                  builder: (context) => SecondaryPartyScreen(
                    primaryContactName: primaryContactName,
                    secondaryTransactionDTO: TransactionsDTO(
                      balanceAmt: balanceAmount,
                      contactId: transactionList[index].toContactId,
                      payedAmt: payedAmt,
                      recievedAmt: recievedAmount,
                      secondaryTransaction: transactionListOfSecondaryParty[
                              transactionListOfSecondaryParty.length - 1]
                          .secondaryTransaction,
                    ),
                  ),
                ));
          }
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: size.width*0.47,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: size.width*0.47,
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
            SizedBox(
               width: size.width*0.33,
              child: Align(
                alignment: Alignment.centerRight,
                child: Text('₹ ${transactionList[index].givenAmt} ',
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
