import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linq_pe/application/contacts/contacts_bloc.dart';
import 'package:linq_pe/application/splitted/splitted_bloc.dart';
import 'package:linq_pe/application/view_dto/contact/contact_dto.dart';
import 'package:linq_pe/application/view_dto/splitted/splitted.dart';
import 'package:linq_pe/presentation/screens/add_amount/screen_add_amount.dart';
import 'package:linq_pe/presentation/screens/add_amount/widgets/drop_down_search_text_field.dart';
import 'package:linq_pe/presentation/screens/add_amount/widgets/radio_box_widget.dart';
import 'package:linq_pe/presentation/screens/add_party/widgets/add_textfield.dart';
import 'package:linq_pe/presentation/view_state/add_amount_riverpod/add_amount.dart';
import 'package:linq_pe/presentation/view_state/add_split_amount/add_split_amount.dart';
import 'package:linq_pe/presentation/view_state/ledger/ledger.dart';
import 'package:linq_pe/presentation/widgets/alert_snackbar.dart';
import 'package:linq_pe/utilities/colors.dart';
import 'package:linq_pe/utilities/list.dart';
import 'package:linq_pe/domain/models/transactions/transaction_type.dart';

class AddSplitAmountScreen extends StatefulWidget {
  const AddSplitAmountScreen({super.key,required  this.ledgerId});
  final String ledgerId;
  @override
  State<AddSplitAmountScreen> createState() => _AddSplitAmountScreenState();
}

class _AddSplitAmountScreenState extends State<AddSplitAmountScreen> {
  final TextEditingController amountController = TextEditingController();

  final TextEditingController detailsController = TextEditingController();

  final TextEditingController transactionIdController = TextEditingController();

  final controllerMapList = createTextEditingController(50);

  @override
  void initState() {
    BlocProvider.of<SplittedBloc>(context)
        .add( SplittedEvent.getSplittedList(ledgerId: widget.ledgerId));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      // appBar: PreferredSize(
      //   preferredSize: size * 0.08,
      //   child: Container(
      //     decoration: BoxDecoration(
      //         gradient: LinearGradient(colors: [
      //       LinqPeColors.kPinkColor.withOpacity(0.6),
      //       LinqPeColors.kPinkColor.withOpacity(0.9)
      //     ])),
      //     child:
      //   ),
      // ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius:
                      const BorderRadius.only(bottomLeft: Radius.circular(50)),
                  gradient: LinearGradient(
                    colors: [
                      LinqPeColors.kPinkColor.withOpacity(0.7),
                      LinqPeColors.kPinkColor.withOpacity(0.9)
                    ],
                    // begin: Alignment.topLeft,
                    // end: Alignment.bottomRight,
                  )),
              child: Padding(
                padding: EdgeInsets.only(
                    left: size.width * 0.03,
                    right: size.width * 0.03,
                    top: size.width * 0.0),
                child: Column(
                  children: [
                    AppBar(
                      backgroundColor: Colors.transparent,
                      leadingWidth: size.width * 0.05,
                      leading: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Padding(
                          padding: EdgeInsets.only(left: size.width * 0.05),
                          child: IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: const Icon(
                                Icons.arrow_back,
                                color: LinqPeColors.kWhiteColor,
                              )),
                        ),
                      ),
                      titleSpacing: size.width * 0.2,
                      title: Text(
                        'Split Amount',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            letterSpacing: .1,
                            fontSize: size.width * 0.06,
                            color: LinqPeColors.kWhiteColor,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: size.height * 0.01),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.04),
              child: Container(
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: LinqPeColors.kPinkColor.withOpacity(0.3),
                          blurRadius: 20,
                          offset: const Offset(5, 5))
                    ],
                    borderRadius: BorderRadius.circular(40),
                    gradient: LinearGradient(
                      colors: [
                        LinqPeColors.kPinkColor.withOpacity(0.7),
                        LinqPeColors.kPinkColor.withOpacity(0.9)
                      ],
                      // begin: Alignment.topLeft,
                      // end: Alignment.bottomRight,
                    )),
                child: Padding(
                  padding: EdgeInsets.only(
                      left: size.width * 0.05,
                      right: size.width * 0.05,
                      bottom: size.height * 0.05,
                      top: size.width * 0.05),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Text('Receipt',
                            style: GoogleFonts.roboto(
                              textStyle: TextStyle(
                                letterSpacing: .1,
                                fontSize: size.width * 0.05,
                                color: LinqPeColors.kWhiteColor,
                                fontWeight: FontWeight.w500,
                              ),
                            )),
                      ),
                      SizedBox(height: size.height * 0.02),
                      Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: size.width * 0.03),
                          child: const DropDownSearchTextField(
                            isFromExpense: false,
                            isFromField: true,
                            hintText: 'Receipt From',
                          )),
                      SizedBox(height: size.height * 0.01),
                      const AvailableReceiptBalanceWidget(),
                      SizedBox(height: size.height * 0.01),
                      AddTextField(
                          textFieldType: TextFieldType.amount,
                          prefix: Icon(
                            Icons.currency_rupee,
                            size: size.width * 0.05,
                            color: LinqPeColors.kBlackColor.withOpacity(0.9),
                          ),
                          fontSize: size.width * 0.055,
                          controller: amountController,
                          isTextNumberType: true,
                          text: 'Enter Total amount',
                          fieldColor: LinqPeColors.kBlackColor),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: size.height * 0.01),
            Container(
              decoration: BoxDecoration(
                  borderRadius:
                      const BorderRadius.only(topRight: Radius.circular(80)),
                  gradient: LinearGradient(
                    colors: [
                      LinqPeColors.kPinkColor.withOpacity(0.7),
                      LinqPeColors.kPinkColor.withOpacity(0.9)
                    ],
                    // begin: Alignment.topLeft,
                    // end: Alignment.bottomRight,
                  )),
              child: Padding(
                padding: EdgeInsets.only(
                    right: size.width * 0.045,
                    left: size.width * 0.045,
                    bottom: size.width * 0.05),
                child: Column(
                  children: [
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    AddingSplitWidget(
                      controllerMapList: controllerMapList,
                      size: size,
                    ),
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                    Material(
                      color: LinqPeColors.kWhiteColor.withOpacity(0.97),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40),
                      ),
                      shadowColor: LinqPeColors.kPinkColor,
                      elevation: 20,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: size.width * 0.05,
                            vertical: size.height * 0.02),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Align(
                                alignment: Alignment.center,
                                child: Text('Details',
                                    style: GoogleFonts.roboto(
                                      textStyle: TextStyle(
                                        letterSpacing: .1,
                                        fontSize: size.width * 0.05,
                                        color: LinqPeColors.kPinkColor,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    )),
                              ),
                              SizedBox(height: size.height * 0.01),
                              AddTextField(
                                  textFieldType: TextFieldType.details,
                                  controller: detailsController,
                                  isTextNumberType: false,
                                  text: 'Enter details',
                                  fieldColor: LinqPeColors.kPinkColor),
                              SizedBox(
                                height: size.height * 0.01,
                              ),
                              SizedBox(
                                height: size.height * 0.0001,
                              ),
                              AddTextField(
                                  textFieldType: TextFieldType.transactionId,
                                  controller: transactionIdController,
                                  isTextNumberType: true,
                                  text: 'Add transaction Id',
                                  fieldColor: LinqPeColors.kPinkColor),
                              SizedBox(
                                height: size.height * 0.01,
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: size.width * 0.05,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: List.generate(
                                      LinqPeList.transactionTypeList.length,
                                      (index) => RadioBoxWidget(
                                            fontSize: size.width * 0.04,
                                            transactionName: LinqPeList
                                                .transactionTypeList[index],
                                            transactionValue:
                                                transactionList(index),
                                          )),
                                ),
                              ),
                              SizedBox(
                                height: size.height * 0.01,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      showPopup(context, size);
                                    },
                                    child: Container(
                                      margin: EdgeInsets.only(
                                          left: size.width * 0.04),
                                      width: size.width * 0.35,
                                      height: size.height * 0.05,
                                      decoration: BoxDecoration(
                                          color: LinqPeColors.kWhiteColor,
                                          boxShadow: [
                                            BoxShadow(
                                                color: LinqPeColors.kBlackColor
                                                    .withOpacity(0.5),
                                                spreadRadius: 0.01,
                                                offset: const Offset(0.3, 1))
                                          ]),
                                      child: const Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Icon(Icons.date_range),
                                          TimeWidget(),
                                        ],
                                      ),
                                    ),
                                  ),
                                  AttachBillRow(size: size),
                                ],
                              )
                            ]),
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.025,
                    ),
                    SplitButtonWidget(size: size),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> showPopup(
    BuildContext context,
    Size size,
  ) async {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
            content: SizedBox(
                width: size.width * 0.8,
                height: size.width * 0.8,
                child: const DatePickerWidget()));
      },
    );
  }
}

class SplitButtonWidget extends ConsumerWidget {
  const SplitButtonWidget({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return BlocBuilder<ContactsBloc, ContactsState>(
      builder: (context, contactstate) {
        List<ContactsDTO> contactList = [];
        double nonsplittedAmount = 0.0;
        if (contactstate is displayContacts) {
          contactList = contactstate.contactList;
          if (ref.watch(fromContactIdProvider).isNotEmpty) {
            final contactIndex = contactList.indexWhere((element) =>
                element.contactId == ref.watch(fromContactIdProvider));

            final contact = contactList[contactIndex];
            if (contact.nonSplittedAmount != null) {
              nonsplittedAmount = contact.nonSplittedAmount!;
            }
          }
        }

        return Material(
          color: LinqPeColors.kWhiteColor.withOpacity(0.1),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
          ),
          shadowColor: LinqPeColors.kPinkColor,
          elevation: 20,
          child: TextButton(
            onPressed: () {
              final splitIdList = splitIdProvider.values.toList();
              final splitAmountList = splitAmountProviders.values.toList();

              final listOfSplitAmounts = splitAmountProviders.values.toList();
              double totalAmount = 0.0;
              for (var amountprovider in listOfSplitAmounts) {
                totalAmount = totalAmount + ref.watch(amountprovider);
              }

              if (ref.watch(fromContactIdProvider).isEmpty) {
                alertSnackbar(context, 'Select recepient');
              } else if (totalAmount > ref.watch(amountProvider)) {
                alertSnackbar(context, 'Total amount is not enough');
              } else if (ref.read(splitIdList[0]).isEmpty) {
                alertSnackbar(context, 'Select the first split id');
              } else if (ref.watch(amountProvider) == 0.0 &&
                  nonsplittedAmount < totalAmount) {
                alertSnackbar(context, 'Not enough available balance');
              } else {
                log(splitIdList.toString());
                if (ref.watch(amountProvider) == 0.0 &&
                    nonsplittedAmount > 0.0 &&
                    totalAmount <= nonsplittedAmount) {
                  BlocProvider.of<ContactsBloc>(context).add(
                    ContactsEvent.addNonSplittingBalance(
                        ledgerId: ref.watch(currentLedgerIdProvider),
                        contactId: ref.watch(fromContactIdProvider),
                        amount: -totalAmount),
                  );
                }
                if (ref.watch(amountProvider) > totalAmount) {
                  BlocProvider.of<ContactsBloc>(context).add(
                    ContactsEvent.addNonSplittingBalance(
                        ledgerId: ref.watch(currentLedgerIdProvider),
                        contactId: ref.watch(fromContactIdProvider),
                        amount: ref.watch(amountProvider) - totalAmount),
                  );
                }

                for (int i = 0; i < splitIdList.length; i++) {
                  final id = ref.read(splitIdList[i]);
                  log(id.toString());

                  final amount = ref.read(splitAmountList[i]);
                  log(amount.toString());
                  if (id.isNotEmpty && amount > 0) {
                    log('Here');
                    BlocProvider.of<SplittedBloc>(context).add(
                        SplittedEvent.addSplittedTransactions(
                            ledgerId: ref.watch(currentLedgerIdProvider),
                            splittedAccountId: id,
                            primaryAccountId: ref.watch(fromContactIdProvider),
                            amountSplitted: amount,
                            transactionType: ref.watch(transactionTypeProvider),
                            timeOfTrans: ref.watch(dateProvider),
                            billImage: ref.watch(imageProvider).path.isEmpty
                                ? null
                                : ref.watch(imageProvider),
                            transactionDetails:
                                ref.watch(transactionDetailsProvider).isEmpty
                                    ? null
                                    : ref.watch(transactionDetailsProvider),
                            userTransactionId:
                                ref.watch(transactionIdProvider).isEmpty
                                    ? null
                                    : ref.watch(transactionIdProvider)));
                  }
                }
                Navigator.pop(context);
              }
            },
            child: SizedBox(
              height: size.height * 0.05,
              width: size.width,
              child: Center(
                child: Text(
                  'SPLIT',
                  style: GoogleFonts.roboto(
                    textStyle: TextStyle(
                      letterSpacing: .1,
                      fontSize: size.width * 0.06,
                      color: LinqPeColors.kWhiteColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

class AvailableReceiptBalanceWidget extends ConsumerWidget {
  const AvailableReceiptBalanceWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final Size size = MediaQuery.of(context).size;
    // double balance = ref.watch(primaryPartyBalanceAmountProvider);
    double balance = 0.0;
    return BlocBuilder<ContactsBloc, ContactsState>(
      builder: (context, state) {
        List<ContactsDTO> contactList = [];
        if (state is displayContacts) {
          contactList = state.contactList;
        }
        final contactIndex = contactList.indexWhere(
          (element) => element.contactId == ref.watch(fromContactIdProvider),
        );
        if (contactIndex >= 0) {
          if (contactList[contactIndex].nonSplittedAmount != null) {
            balance = contactList[contactIndex].nonSplittedAmount!;
          }
        }
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
          child: Row(
            children: [
              Text(
                'available balance :',
                style: GoogleFonts.roboto(
                  textStyle: TextStyle(
                    letterSpacing: .1,
                    fontSize: size.width * 0.04,
                    color: LinqPeColors.kWhiteColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(
                width: size.width * 0.05,
              ),
              Text(
                balance.toString(),
                style: GoogleFonts.roboto(
                  textStyle: TextStyle(
                    letterSpacing: .1,
                    fontSize: size.width * 0.04,
                    color: LinqPeColors.kWhiteColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class AddingSplitWidget extends ConsumerWidget {
  const AddingSplitWidget({
    super.key,
    required this.size,
    required this.controllerMapList,
  });
  final Map<int, TextEditingController> controllerMapList;
  final Size size;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    log('bulding...');
    final length = ref.watch(splitFieldNumberProvider);
    return Column(
      children: [
        Column(
            children: List.generate(length, (index) {
          return Column(
            children: [
              AddSplitEachFieldWidget(
                amountController: controllerMapList[index]!,
                index: index,
                size: size,
              ),
              SizedBox(
                height: index == length - 1 ? 0.0 : size.height * 0.03,
              ),
            ],
          );
        })),
        Align(
          alignment: Alignment.topRight,
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: size.width * 0.005, vertical: size.height * 0.01),
            child: Material(
              shadowColor: LinqPeColors.kPinkColor,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50))),
              elevation: 20,
              child: CircleAvatar(
                  backgroundColor: LinqPeColors.kWhiteColor,
                  radius: size.width * 0.05,
                  child: IconButton(
                      onPressed: () {
                        final listOfSplitAmounts =
                            splitAmountProviders.values.toList();
                        double totalAmount = 0.0;
                        for (var amountprovider in listOfSplitAmounts) {
                          totalAmount = totalAmount + ref.watch(amountprovider);
                        }

                        if (totalAmount < ref.watch(amountProvider)) {
                          addSplitFieldNum(ref);
                        } else {
                          alertSnackbar(context, 'Total amount is not enough');
                        }
                      },
                      icon: const Icon(Icons.add))),
            ),
          ),
        )
      ],
    );
  }
}

class AddSplitEachFieldWidget extends ConsumerWidget {
  const AddSplitEachFieldWidget(
      {super.key,
      required this.size,
      required this.index,
      required this.amountController});

  final Size size;

  final int index;
  final TextEditingController amountController;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return BlocBuilder<SplittedBloc, SplittedState>(
      builder: (context, state) {
        List<SplittedAccountsModelDTO> splittedAccountsList = [];
        List<SplittedAccountsModelDTO> splitList = [];
        final splitId = ref.watch(splitIdProvider[index + 1]!);
        if (state is displaySplittedAccounts) {
          splittedAccountsList = state.splittedAccountList;
          if (splitId.isNotEmpty) {
            splitList = splittedAccountsList
                .where((element) => element.splittedAccountContactId == splitId)
                .toList();
          }
        }
        log('rebuild');
        return AnimatedContainer(
          duration: const Duration(seconds: 1),
          child: Material(
            color: LinqPeColors.kWhiteColor.withOpacity(0.97),
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(0),
                    bottomLeft: Radius.circular(0),
                    bottomRight: Radius.circular(0),
                    topRight: Radius.circular(80))),
            shadowColor: LinqPeColors.kPinkColor,
            elevation: 20,
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: size.width * 0.05, vertical: size.height * 0.02),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Text('Split',
                        style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                            letterSpacing: .1,
                            fontSize: size.width * 0.05,
                            color: LinqPeColors.kPinkColor,
                            fontWeight: FontWeight.w500,
                          ),
                        )),
                  ),
                  SizedBox(height: size.height * 0.01),
                  Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: size.width * 0.03),
                      child: DropDownSearchTextField(
                        isFromExpense: false,
                        isFromField: false,
                        hintText: 'Split To',
                        isFromAddSplit: true,
                        providerNum: index + 1,
                      )),
                  SizedBox(
                    height: size.height * 0.03,
                  ),
                  AddTextField(
                      textFieldType: TextFieldType.splitAmount,
                      providerNum: index + 1,
                      prefix: Icon(
                        Icons.currency_rupee,
                        size: size.width * 0.06,
                        color: LinqPeColors.kBlackColor.withOpacity(0.9),
                      ),
                      fontSize: size.width * 0.06,
                      controller: amountController,
                      isTextNumberType: true,
                      text: 'Enter splitting amount',
                      fieldColor: LinqPeColors.kPinkColor),
                  splitId.isNotEmpty
                      // && splitList.isNotEmpty
                      ? BlocBuilder<ContactsBloc, ContactsState>(
                          builder: (context, contactstate) {
                            List<ContactsDTO> contactList = [];
                            if (contactstate is displayContacts) {
                              contactList = contactstate.contactList;
                            }

                            double? primarybalance = contactList
                                .where((element) =>
                                    element.contactId ==
                                    ref.watch(splitIdProvider[index + 1]!))
                                .first
                                .blanceAmount;

                            primarybalance ??= 0.0;

                            //come here...
                            return Padding(
                              padding: EdgeInsets.all(size.width * 0.05),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      SizedBox(
                                        width: size.width * 0.4,
                                        child: Text(
                                          'From',
                                          style: GoogleFonts.poppins(
                                            textStyle: TextStyle(
                                              letterSpacing: .1,
                                              fontSize: size.width * 0.04,
                                              color: LinqPeColors.kGreyColor,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: size.width * 0.3,
                                        child: Text(
                                          'Balance',
                                          style: GoogleFonts.poppins(
                                            textStyle: TextStyle(
                                              letterSpacing: .1,
                                              fontSize: size.width * 0.04,
                                              color: LinqPeColors.kGreyColor,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: size.height * 0.02,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      SizedBox(
                                        width: size.width * 0.4,
                                        child: Text(
                                          'Primary Balance',
                                          style: GoogleFonts.poppins(
                                            textStyle: TextStyle(
                                              letterSpacing: .1,
                                              fontSize: size.width * 0.04,
                                              color: LinqPeColors.kBlackColor,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: size.width * 0.3,
                                        child: Text(
                                          primarybalance.toString(),
                                          style: GoogleFonts.poppins(
                                            textStyle: TextStyle(
                                              letterSpacing: .1,
                                              fontSize: size.width * 0.04,
                                              color: LinqPeColors.kBlackColor,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                      children: List.generate(
                                          splitList.length,
                                          (index) => Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  SizedBox(
                                                    width: size.width * 0.4,
                                                    child: Text(
                                                      contactList
                                                          .where((element) =>
                                                              element
                                                                  .contactId ==
                                                              splitList[index]
                                                                  .primaryAccountContactId)
                                                          .first
                                                          .displayName,
                                                      style:
                                                          GoogleFonts.poppins(
                                                        textStyle: TextStyle(
                                                          letterSpacing: .1,
                                                          fontSize:
                                                              size.width * 0.04,
                                                          color: LinqPeColors
                                                              .kBlackColor,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: size.width * 0.3,
                                                    child: Text(
                                                      splitList[index]
                                                          .balanceAmt
                                                          .toString(),
                                                      style: GoogleFonts.roboto(
                                                        textStyle: TextStyle(
                                                          letterSpacing: .1,
                                                          fontSize:
                                                              size.width * 0.04,
                                                          color: LinqPeColors
                                                              .kBlackColor,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ))),
                                ],
                              ),
                            );
                          },
                        )
                      : const SizedBox(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

Map<int, TextEditingController> createTextEditingController(int length) {
  final controllerList = <int, TextEditingController>{};

  for (var i = 0; i < length; i++) {
    final TextEditingController amountsController = TextEditingController();
    controllerList[i] = amountsController;
  }
  return controllerList;
}
