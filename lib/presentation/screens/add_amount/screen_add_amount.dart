import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:linq_pe/application/contacts/contacts_bloc.dart';
import 'package:linq_pe/application/ledger/ledger_bloc.dart';
import 'package:linq_pe/application/party/customer/customer_bloc.dart';
import 'package:linq_pe/application/rolling/rolling_bloc.dart';
import 'package:linq_pe/application/seondary_party/secondary_party_bloc.dart';
import 'package:linq_pe/application/split_amount/split_amount_bloc.dart';
import 'package:linq_pe/application/splitted/splitted_bloc.dart';
import 'package:linq_pe/application/transactions/transactions_bloc.dart';
import 'package:linq_pe/application/view_dto/contact/contact_dto.dart';
import 'package:linq_pe/application/view_dto/ledger/ledger.dart';
import 'package:linq_pe/application/view_dto/splitted/splitted.dart';
import 'package:linq_pe/application/view_dto/transaction/secondary_transaction_dto.dart';
import 'package:linq_pe/domain/models/ledger/ledger.dart';
import 'package:linq_pe/domain/models/transactions/transaction_type.dart';
import 'package:linq_pe/presentation/screens/add_amount/widgets/drop_down_search_text_field.dart';
import 'package:linq_pe/presentation/screens/add_amount/widgets/radio_box_widget.dart';
import 'package:linq_pe/presentation/screens/add_party/widgets/add_textfield.dart';
import 'package:linq_pe/presentation/view_state/add_amount_riverpod/add_amount.dart';
import 'package:linq_pe/presentation/view_state/ledger/ledger.dart';
import 'package:linq_pe/presentation/view_state/secondary_party_riverpod/secondary_party.dart';
import 'package:linq_pe/presentation/view_state/view_party_riverpod.dart/view_party.dart';
import 'package:linq_pe/presentation/widgets/alert_snackbar.dart';
import 'package:linq_pe/utilities/colors.dart';
import 'package:linq_pe/utilities/list.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class AddAmountScreen extends StatefulWidget {
  const AddAmountScreen({
    super.key,
    this.isAddExpense = false,
    required this.isPay,
    required this.isAddBalance,
    required this.partyName,
    required this.isSplit,
    required this.isSecondaryPay,
    required this.isGive,
    this.isSplittingBalance = false,
    this.primaryPartyName = '',
    this.splitAmount = '',
    this.transactionRealId = '',
    this.splittedTransactionId = '',
    this.isEdit = false,
    this.editTransaction = '',
    this.primaryContactId = '',
    required this.ledgerId,
    required this.isRepay,
    this.rollingAccountId = '',
    this.isLedgerRoll = false,
  });
  final bool isPay;
  final bool isAddBalance;
  final String partyName;
  final bool isSecondaryPay;
  final bool isSplit;
  final String primaryPartyName;
  final String splitAmount;
  final String transactionRealId;
  final String splittedTransactionId;
  final bool isGive;
  final bool isAddExpense;
  final bool isRepay;
  final bool isSplittingBalance;
  final bool isEdit;
  final dynamic editTransaction;
  final String primaryContactId;
  final String ledgerId;
  final String rollingAccountId;
  final bool isLedgerRoll;
  @override
  State<AddAmountScreen> createState() => _AddAmountScreenState();
}

class _AddAmountScreenState extends State<AddAmountScreen> {
  final TextEditingController amountController = TextEditingController();

  final TextEditingController detailsController = TextEditingController();

  final TextEditingController transactionIdController = TextEditingController();
  @override
  void initState() {
    super.initState();
    if (widget.isEdit) {
      amountController.text = widget.editTransaction.givenAmt.toString();
      if (widget.editTransaction.transactionDetails != null) {
        detailsController.text = widget.editTransaction.transactionDetails!;
      }
      if (widget.editTransaction.transactionId != null) {
        transactionIdController.text = widget.editTransaction.transactionId!;
      }
    } else {
      BlocProvider.of<SplittedBloc>(context).add(SplittedEvent.getSplittedList(
        ledgerId: widget.ledgerId,
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: LinqPeColors.kLightBluwWhite,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back,
              color: LinqPeColors.kWhiteColor,
            )),
        backgroundColor: LinqPeColors.kPinkColor,
        title: Text(
          widget.isAddExpense
              ? 'Adding Expense'
              : widget.isSplit
                  ? 'Split Amount: ${widget.splitAmount}'
                  : widget.isAddBalance || widget.isGive
                      ? 'You give to ${widget.partyName}'
                      : widget.isPay
                          ? widget.isSecondaryPay
                              ? '${widget.partyName} pay for ${widget.primaryPartyName}'
                              : 'You pay for ${widget.partyName}'
                          : 'You got from ${widget.partyName}',
          style: GoogleFonts.poppins(
            textStyle: TextStyle(
              letterSpacing: .1,
              fontSize:
                  widget.isSecondaryPay ? size.width * 0.05 : size.width * 0.06,
              color: LinqPeColors.kWhiteColor,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
      bottomSheet:
          // SizedBox(
          // height: size.height * 0.2,
          // width: size.width,
          // child: Column(
          //   children: [
          // ColoredBox(
          //   color: LinqPeColors.kLightBluwWhite,
          //   child: Container(
          //     margin: EdgeInsets.symmetric(
          //         horizontal: size.width * 0.05, vertical: size.width * 0.05),
          //     height: size.height * 0.065,
          //     width: size.width,
          //     decoration: const BoxDecoration(color: LinqPeColors.kPinkColor),
          //     child: InkWell(
          //       onTap: () {
          //         // Navigator.push(
          //         //     context,
          //         //     CupertinoPageRoute(
          //         //       builder: (context) => ,

          //         //     ));
          //       },
          //       child: Center(
          //           child: Text(
          //         'SPLIT',
          //         style: GoogleFonts.poppins(
          //           textStyle: TextStyle(
          //             letterSpacing: .5,
          //             fontSize: size.width * 0.04,
          //             color: LinqPeColors.kWhiteColor,
          //             fontWeight: FontWeight.w600,
          //           ),
          //         ),
          //       )),
          //     ),
          //   ),
          // ),
          AddButton(
              isLedgerRoll: widget.isLedgerRoll,
              rollingAccountId: widget.rollingAccountId,
              isRepay: widget.isRepay,
              primaryContactId: widget.primaryContactId,
              isEdit: widget.isEdit,
              isAddExpense: widget.isAddExpense,
              isGive: widget.isGive,
              splitAmount: widget.splitAmount,
              splittedTransactionId: widget.splittedTransactionId,
              transactionRealId: widget.transactionRealId,
              isSplit: widget.isSplit,
              size: size,
              isSplittingBalance: widget.isSplittingBalance,
              isAddBalance: widget.isAddBalance,
              isPay: widget.isPay,
              isSecondaryPay: widget.isSecondaryPay),
      //     ],
      //   ),
      // ),
      //  backgroundColor: LinqPeColors.kPinkColor.withOpacity(0.4),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(size.width * 0.01),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: widget.isAddExpense ? 0.0 : size.height * 0.02,
                ),
                widget.isAddExpense
                    ? const ExpenseRollRadioBoxWidget()
                    : const SizedBox(),

                AddTextField(
                    textFieldType: TextFieldType.amount,
                    prefix: Icon(
                      Icons.currency_rupee,
                      size: size.width * 0.08,
                      color: LinqPeColors.kBlackColor.withOpacity(0.9),
                    ),
                    fontSize: size.width * 0.08,
                    controller: amountController,
                    isTextNumberType: true,
                    text: 'Enter amount',
                    fieldColor: LinqPeColors.kPinkColor),
                widget.isAddExpense || widget.isLedgerRoll
                    ? SizedBox(
                        height: size.height * 0.03,
                      )
                    : const SizedBox(),
                widget.isAddExpense || widget.isLedgerRoll
                    ? Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: size.width * 0.03),
                        child: DropDownSearchTextField(
                          isFromField: true,
                          hintText: 'From who',
                          isLedgerRoll: widget.isLedgerRoll,
                        ))
                    : const SizedBox(),
                widget.isAddExpense || widget.isLedgerRoll
                    ? SizedBox(
                        height: size.height * 0.03,
                      )
                    : const SizedBox(),
                widget.isAddExpense || widget.isLedgerRoll
                    ? SplitListBalanceWidget(
                        isLedgerRoll: widget.isLedgerRoll,
                      )
                    : const SizedBox(),
                // widget.isAddExpense
                //     ? SizedBox(
                //         height: size.height * 0.01,
                //       )
                //     : const SizedBox(),
                SizedBox(
                  height: widget.isPay ||
                          widget.isSecondaryPay ||
                          widget.isSplit ||
                          widget.isAddExpense ||
                          widget.isRepay ||
                          widget.isLedgerRoll
                      ? size.height * 0.03
                      : 0,
                ),
                widget.isPay ||
                        widget.isSecondaryPay ||
                        widget.isSplit ||
                        widget.isAddExpense ||
                        widget.isRepay ||
                        widget.isLedgerRoll
                    ? Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: size.width * 0.03),
                        child: DropDownSearchTextField(
                          isRepay: widget.isRepay,
                          rollingAccountId:
                              widget.isRepay ? widget.rollingAccountId : '',
                          isFromField: false,
                          hintText: 'To whom',
                          isLedgerRoll: widget.isLedgerRoll,
                        ))
                    : const SizedBox(),
                SizedBox(
                  height: size.height * 0.03,
                ),

                widget.isRepay ? const AmountToRepayWidget() : const SizedBox(),
                widget.isRepay
                    ? SizedBox(
                        height: size.height * 0.03,
                      )
                    : const SizedBox(),
                AddTextField(
                    textFieldType: TextFieldType.details,
                    controller: detailsController,
                    isTextNumberType: false,
                    text: 'Enter details',
                    fieldColor: LinqPeColors.kPinkColor),
                SizedBox(
                  height: size.height * 0.03,
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
                  height: size.height * 0.03,
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
                              transactionName:
                                  LinqPeList.transactionTypeList[index],
                              transactionValue: transactionList(index),
                            )),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.04,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        showPopup(context, size);
                      },
                      child: Container(
                        margin: EdgeInsets.only(left: size.width * 0.04),
                        width: size.width * 0.35,
                        height: size.height * 0.05,
                        decoration: BoxDecoration(
                            color: LinqPeColors.kWhiteColor,
                            boxShadow: [
                              BoxShadow(
                                  color:
                                      LinqPeColors.kBlackColor.withOpacity(0.5),
                                  spreadRadius: 0.01,
                                  offset: const Offset(0.3, 1))
                            ]),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(Icons.date_range),
                            TimeWidget(),
                          ],
                        ),
                      ),
                    ),
                    // SfDateRangePicker(
                    //   onSubmit: (value) {
                    //     log(value.toString());
                    //   },
                    // ),
                    AttachBillRow(size: size),
                  ],
                )
              ],
            ),
          ),
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

class AmountToRepayWidget extends ConsumerWidget {
  const AmountToRepayWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final Size size = MediaQuery.of(context).size;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
      height: size.height * 0.07,
      margin: EdgeInsets.symmetric(horizontal: size.width * 0.03),
      decoration: BoxDecoration(
          color: LinqPeColors.kWhiteColor,
          borderRadius: BorderRadius.circular(5)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Amount to Repay',
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                letterSpacing: .1,
                fontSize: size.width * 0.035,
                color: LinqPeColors.kPinkColor.withOpacity(0.7),
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Text(
            ref.watch(repayTotalAmountProvider).toString(),
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                letterSpacing: .1,
                fontSize: size.width * 0.045,
                color: LinqPeColors.kBlackColor,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ExpenseRollRadioBoxWidget extends ConsumerWidget {
  const ExpenseRollRadioBoxWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final Size size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.all(size.width * 0.035),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            alignment: Alignment.center,
            width: size.width * 0.4,
            decoration: BoxDecoration(
                color: ref.watch(expenseTypeProvider) == ExpenseType.roll
                    ? LinqPeColors.kLightBluwWhite
                    : LinqPeColors.kPinkColor,
                borderRadius: BorderRadius.circular(5)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Pay',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: size.width * 0.05,
                        color:
                            ref.watch(expenseTypeProvider) == ExpenseType.roll
                                ? LinqPeColors.kBlackColor
                                : LinqPeColors.kWhiteColor)),
                Radio(
                    activeColor: LinqPeColors.kWhiteColor,
                    groupValue: ref.watch(expenseTypeProvider),
                    value: ExpenseType.pay,
                    onChanged: (value) {
                      if (value != null) {
                        addExpenseType(value, ref);
                      }
                    })
              ],
            ),
          ),
          Container(
            alignment: Alignment.center,
            width: size.width * 0.4,
            decoration: BoxDecoration(
                color: ref.watch(expenseTypeProvider) == ExpenseType.roll
                    ? LinqPeColors.kPinkColor
                    : LinqPeColors.kLightBluwWhite,
                borderRadius: BorderRadius.circular(5)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Roll',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: size.width * 0.05,
                        color:
                            ref.watch(expenseTypeProvider) == ExpenseType.roll
                                ? LinqPeColors.kWhiteColor
                                : LinqPeColors.kBlackColor)),
                Radio(
                    activeColor: LinqPeColors.kWhiteColor,
                    groupValue: ref.watch(expenseTypeProvider),
                    value: ExpenseType.roll,
                    onChanged: (value) {
                      if (value != null) {
                        addExpenseType(value, ref);
                      }
                    })
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class AddButton extends ConsumerWidget {
  const AddButton(
      {super.key,
      required this.isSplit,
      required this.size,
      required this.isAddBalance,
      required this.isPay,
      required this.isSecondaryPay,
      required this.transactionRealId,
      required this.splittedTransactionId,
      required this.splitAmount,
      required this.isGive,
      required this.isAddExpense,
      required this.isSplittingBalance,
      required this.isEdit,
      required this.primaryContactId,
      required this.rollingAccountId,
      required this.isRepay,
      required this.isLedgerRoll});

  final Size size;
  final bool isPay;
  final bool isRepay;
  final bool isAddBalance;
  final bool isSecondaryPay;
  final bool isSplit;
  final String transactionRealId;
  final String splittedTransactionId;
  final String splitAmount;
  final bool isGive;
  final bool isAddExpense;
  final bool isSplittingBalance;
  final bool isEdit;
  final String primaryContactId;
  final String rollingAccountId;
  final bool isLedgerRoll;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return BlocBuilder<SplitAmountBloc, SplitAmountState>(
      builder: (context, splitstate) {
        List<NestedSecondaryTransactionsDTO> splitList = [];
        if (splitstate is displaySplitAmountList) {
          splitList = splitstate.transactionList;
        }
        return BlocBuilder<SecondaryPartyBloc, SecondaryPartyState>(
          builder: (context, secondarystate) {
            List<NestedSecondaryTransactionsDTO> transactionList = [];
            if (secondarystate is displaySecondaryPartyList) {
              transactionList = secondarystate.transactionList;
            }

            return ColoredBox(
              color: LinqPeColors.kLightBluwWhite,
              child: Container(
                margin: EdgeInsets.symmetric(
                    horizontal: size.width * 0.05, vertical: size.width * 0.05),
                height: size.height * 0.065,
                width: size.width,
                decoration: const BoxDecoration(color: LinqPeColors.kPinkColor),
                child: InkWell(
                  onTap: () {
                    bool isToGoBack = true;
                    if (ref.watch(amountProvider) >= 0) {
                      if (!isEdit) {
                        if (!isAddBalance &&
                            !isRepay &&
                            !isSecondaryPay &&
                            !isAddExpense &&
                            !isSplit &&
                            !isSplittingBalance &&
                            !isLedgerRoll &&
                            !isGive) {
                          log('Recalled');
                          if (isPay &&
                              ref.watch(primaryPartyBalanceAmountProvider) <
                                  ref.watch(amountProvider)) {
                            isToGoBack = false;
                            //Give a toast that you dont have enough Balance
                            alertSnackbar(
                                context, 'You dont have enough Balance');
                          } else {
                            BlocProvider.of<TransactionsBloc>(context).add(
                                TransactionsEvent.addGetTransctions(
                                    ledgerId:
                                        ref.watch(currentLedgerIdProvider),
                                    transactionDetails: ref
                                            .watch(transactionDetailsProvider)
                                            .isEmpty
                                        ? null
                                        : ref.watch(transactionDetailsProvider),
                                    fromContactId:
                                        ref.watch(fromContactIdProvider),
                                    toContactId: ref.watch(toContactIdProvider),
                                    amount: ref.watch(amountProvider),
                                    isPayed: isPay,
                                    transactionType:
                                        ref.watch(transactionTypeProvider),
                                    timeOfTrans: ref.watch(dateProvider),
                                    billImage:
                                        ref.watch(imageProvider).path.isEmpty
                                            ? null
                                            : ref.watch(imageProvider),
                                    transactionId: ref
                                            .watch(transactionIdProvider)
                                            .isEmpty
                                        ? null
                                        : ref.watch(transactionIdProvider)));
                            Future.delayed(
                              const Duration(milliseconds: 100),
                              () => BlocProvider.of<CustomerBloc>(context)
                                  .add(CustomerEvent.getCustomerList(
                                ledgerId: ref.watch(currentLedgerIdProvider),
                              )),
                            );
                          }
                        } else if (isAddBalance) {
                          BlocProvider.of<TransactionsBloc>(context).add(
                              TransactionsEvent.addBalanceTransctions(
                                  ledgerId: ref.watch(currentLedgerIdProvider),
                                  transactionDetails: ref
                                          .watch(transactionDetailsProvider)
                                          .isEmpty
                                      ? null
                                      : ref.watch(transactionDetailsProvider),
                                  fromContactId: 'You',
                                  toContactId: ref.watch(fromContactIdProvider),
                                  amount: ref.watch(amountProvider),
                                  transactionType:
                                      ref.watch(transactionTypeProvider),
                                  timeOfTrans: ref.watch(dateProvider),
                                  billImage:
                                      ref.watch(imageProvider).path.isEmpty
                                          ? null
                                          : ref.watch(imageProvider),
                                  transactionId:
                                      ref.watch(transactionIdProvider).isEmpty
                                          ? null
                                          : ref.watch(transactionIdProvider)));
                          Future.delayed(
                            const Duration(milliseconds: 100),
                            () => BlocProvider.of<CustomerBloc>(context)
                                .add(CustomerEvent.getCustomerList(
                              ledgerId: ref.watch(currentLedgerIdProvider),
                            )),
                          );
                        } else if (isSecondaryPay) {
                          log(ref.watch(amountProvider).toString());
                          log(ref
                              .watch(secondaryPartyBalanceAmountProvider)
                              .toString());
                          if (ref.watch(amountProvider) <=
                              ref.watch(secondaryPartyBalanceAmountProvider)) {
                            log('Okays');
                            List<NestedSecondaryTransactionsDTO>
                                listOfTransaction = List.from(transactionList);
                            listOfTransaction
                                .add(NestedSecondaryTransactionsDTO(
                              isExpense: false,
                              isGet: false,
                              isGive: false,
                              isAddBalance: true,
                              isSplit: false,
                              id: DateTime.now()
                                  .millisecondsSinceEpoch
                                  .toString(),
                              transactionType:
                                  ref.watch(transactionTypeProvider),
                              timeOfTrans: ref.watch(dateProvider),
                              toContactId: ref.watch(toContactIdProvider),
                              payedAmt: ref.watch(amountProvider),
                              balanceAmt: ref
                                  .watch(secondaryPartyBalanceAmountProvider),
                              isPayed: true,
                              givenAmt: ref.watch(amountProvider),
                              fromContactId:
                                  ref.watch(secondaryContactIdProvider),
                              billImage: ref.watch(imageProvider).path.isEmpty
                                  ? null
                                  : ref.watch(imageProvider),
                              secondaryList: null,
                              transactionDetails:
                                  ref.watch(transactionDetailsProvider).isEmpty
                                      ? null
                                      : ref.watch(transactionDetailsProvider),
                              transactionId:
                                  ref.watch(transactionIdProvider).isEmpty
                                      ? null
                                      : ref.watch(transactionIdProvider),
                            ));
                            List<NestedSecondaryTransactionsDTO>
                                listOfSplitTransaction = List.from(splitList);
                            final splitIndex =
                                listOfSplitTransaction.indexWhere((element) =>
                                    element.id == transactionRealId);
                            if (splitIndex >= 0) {
                              listOfSplitTransaction[splitIndex] = NestedSecondaryTransactionsDTO(
                                  isExpense: listOfSplitTransaction[splitIndex]
                                      .isExpense,
                                  isAddBalance: listOfSplitTransaction[splitIndex]
                                      .isAddBalance,
                                  isGet:
                                      listOfSplitTransaction[splitIndex].isGet,
                                  isGive:
                                      listOfSplitTransaction[splitIndex].isGive,
                                  isSplit: listOfSplitTransaction[splitIndex]
                                      .isSplit,
                                  id: listOfSplitTransaction[splitIndex].id,
                                  transactionType:
                                      listOfSplitTransaction[splitIndex]
                                          .transactionType,
                                  timeOfTrans: listOfSplitTransaction[splitIndex]
                                      .timeOfTrans,
                                  toContactId: listOfSplitTransaction[splitIndex]
                                      .toContactId,
                                  payedAmt: listOfSplitTransaction[splitIndex]
                                      .payedAmt,
                                  balanceAmt: listOfSplitTransaction[splitIndex]
                                      .balanceAmt,
                                  isPayed: listOfSplitTransaction[splitIndex]
                                      .isPayed,
                                  givenAmt: listOfSplitTransaction[splitIndex]
                                      .givenAmt,
                                  fromContactId: listOfSplitTransaction[splitIndex]
                                      .fromContactId,
                                  billImage: listOfSplitTransaction[splitIndex]
                                      .billImage,
                                  transactionDetails:
                                      listOfSplitTransaction[splitIndex].transactionDetails,
                                  transactionId: listOfSplitTransaction[splitIndex].transactionId,
                                  secondaryList: listOfTransaction);
                            }
                            BlocProvider.of<SplitAmountBloc>(context).add(
                                SplitAmountEvent.addSplitAmountList(
                                    transactionList: listOfSplitTransaction));
                            BlocProvider.of<SecondaryPartyBloc>(context).add(
                                SecondaryPartyEvent.addSecondaryPartyList(
                                    transactionList: listOfTransaction));

                            // addSecondaryPayment(ref.watch(amountProvider), ref);

                            // addSecondaryDTO(
                            // SecondaryTransactionsDTO(
                            //   transactionType: ref.watch(transactionTypeProvider),
                            //   timeOfTrans: ref.watch(dateProvider),
                            //   toContactId: ref.watch(toContactIdProvider),
                            //   payedAmt: ref.watch(amountProvider),
                            //   balanceAmt:
                            //       ref.watch(secondaryPartyBalanceAmountProvider),
                            //   isPayed: true,
                            //   givenAmt: ref.watch(amountProvider),
                            //   fromContactId: ref.watch(secondaryContactIdProvider),
                            //   billImage: ref.watch(imageProvider).path.isEmpty
                            //       ? null
                            //       : ref.watch(imageProvider),
                            //   secondaryTransaction: null,
                            //   transactionDetails:
                            //       ref.watch(transactionDetailsProvider).isEmpty
                            //           ? null
                            //           : ref.watch(transactionDetailsProvider),
                            //   transactionId: ref.watch(transactionIdProvider).isEmpty
                            //       ? null
                            //       : ref.watch(transactionIdProvider),
                            // ),
                            //     ref);
                            BlocProvider.of<TransactionsBloc>(context).add(
                                TransactionsEvent.addSecondaryPartyPayment(
                                    ledgerId:
                                        ref.watch(currentLedgerIdProvider),
                                    isSplittedPrimaryTransaction: true,
                                    splittedTransactionId:
                                        splittedTransactionId,
                                    transactionRealId: transactionRealId,
                                    amountPayed: ref.watch(amountProvider),
                                    payedToId: ref.watch(toContactIdProvider),
                                    primaryContactId:
                                        ref.watch(fromContactIdProvider),
                                    secondaryContactId:
                                        ref.watch(secondaryContactIdProvider),
                                    transactionDetails: ref
                                            .watch(transactionDetailsProvider)
                                            .isEmpty
                                        ? null
                                        : ref.watch(transactionDetailsProvider),
                                    transactionType:
                                        ref.watch(transactionTypeProvider),
                                    timeOfTrans: ref.watch(dateProvider),
                                    billImage:
                                        ref.watch(imageProvider).path.isEmpty
                                            ? null
                                            : ref.watch(imageProvider),
                                    transactionId: ref
                                            .watch(transactionIdProvider)
                                            .isEmpty
                                        ? null
                                        : ref.watch(transactionIdProvider)));
                            Future.delayed(
                              const Duration(milliseconds: 100),
                              () => BlocProvider.of<CustomerBloc>(context)
                                  .add(CustomerEvent.getCustomerList(
                                ledgerId: ref.watch(currentLedgerIdProvider),
                              )),
                            );
                          } else {
                            isToGoBack = false;
                            //Give a toast that you dont have enough Balance
                            alertSnackbar(
                                context, 'You dont have enough Balance');
                          }
                        } else if (isSplit && !isSplittingBalance) {
                          log('listHere2${ref.watch(toContactIdProvider).toString()}');
                          if (double.parse(splitAmount) >=
                              ref.watch(amountProvider)) {
                            final id = DateTime.now()
                                .millisecondsSinceEpoch
                                .toString();
                            List<NestedSecondaryTransactionsDTO>
                                listOfTransaction = List.from(splitList);
                            listOfTransaction
                                .add(NestedSecondaryTransactionsDTO(
                              isExpense: false,
                              isAddBalance: false,
                              isGet: false,
                              isGive: false,
                              isSplit: isSplit,
                              id: id,
                              transactionType:
                                  ref.watch(transactionTypeProvider),
                              timeOfTrans: ref.watch(dateProvider),
                              toContactId: ref.watch(toContactIdProvider),
                              payedAmt: 0,
                              balanceAmt: ref.watch(amountProvider),
                              isPayed: false,
                              givenAmt: ref.watch(amountProvider),
                              fromContactId: 'You',
                              billImage: ref.watch(imageProvider).path.isEmpty
                                  ? null
                                  : ref.watch(imageProvider),
                              transactionDetails:
                                  ref.watch(transactionDetailsProvider).isEmpty
                                      ? null
                                      : ref.watch(transactionDetailsProvider),
                              transactionId:
                                  ref.watch(transactionIdProvider).isEmpty
                                      ? null
                                      : ref.watch(transactionIdProvider),
                            ));

                            BlocProvider.of<SplitAmountBloc>(context).add(
                                SplitAmountEvent.addSplitAmountList(
                                    transactionList: listOfTransaction));

                            BlocProvider.of<TransactionsBloc>(context)
                                .add(TransactionsEvent.splitAmounts(
                              ledgerId: ref.watch(currentLedgerIdProvider),
                              id: id,
                              primaryContactId:
                                  ref.watch(fromContactIdProvider),
                              toContactId: ref.watch(toContactIdProvider),
                              transactionId: transactionRealId,
                              splitAmount: ref.watch(amountProvider),
                              transactionDetails:
                                  ref.watch(transactionDetailsProvider).isEmpty
                                      ? null
                                      : ref.watch(transactionDetailsProvider),
                              transactionType:
                                  ref.watch(transactionTypeProvider),
                              timeOfTrans: ref.watch(dateProvider),
                              billImage: ref.watch(imageProvider).path.isEmpty
                                  ? null
                                  : ref.watch(imageProvider),
                              userTransactionId:
                                  ref.watch(transactionIdProvider).isEmpty
                                      ? null
                                      : ref.watch(transactionIdProvider),
                            ));
                          } else {
                            isToGoBack = false;
                            //Give a toast that you dont have enough Balance
                            alertSnackbar(
                                context, 'You dont have enough Balance');
                          }
                        } else if (isGive) {
                          BlocProvider.of<TransactionsBloc>(context).add(
                              TransactionsEvent.addGiveTransactions(
                                  ledgerId: ref.watch(currentLedgerIdProvider),
                                  transactionDetails: ref
                                          .watch(transactionDetailsProvider)
                                          .isEmpty
                                      ? null
                                      : ref.watch(transactionDetailsProvider),
                                  fromContactId: 'You',
                                  toContactId: ref.watch(fromContactIdProvider),
                                  amount: ref.watch(amountProvider),
                                  transactionType:
                                      ref.watch(transactionTypeProvider),
                                  timeOfTrans: ref.watch(dateProvider),
                                  billImage:
                                      ref.watch(imageProvider).path.isEmpty
                                          ? null
                                          : ref.watch(imageProvider),
                                  transactionId:
                                      ref.watch(transactionIdProvider).isEmpty
                                          ? null
                                          : ref.watch(transactionIdProvider)));
                          Future.delayed(
                            const Duration(milliseconds: 100),
                            () => BlocProvider.of<CustomerBloc>(context)
                                .add(CustomerEvent.getCustomerList(
                              ledgerId: ref.watch(currentLedgerIdProvider),
                            )),
                          );
                        } else if (isAddExpense &&
                            ref.watch(expenseTypeProvider) == ExpenseType.pay) {
                          log('K');
                          log('AddEx${ref.watch(primaryPartyBalanceAmountProvider)}');

                          if (ref.watch(fromContactIdProvider) ==
                              ref.watch(splittedAccountBalanceProvider)) {
                            log('Yes');

                            if (ref.watch(primaryPartyBalanceAmountProvider) <
                                ref.watch(amountProvider)) {
                              isToGoBack = false;
                              //Give a toast that you dont have enough Balance
                              alertSnackbar(
                                  context, 'You dont have enough Balance');
                            } else {
                              BlocProvider.of<TransactionsBloc>(context).add(
                                  TransactionsEvent.addGetTransctions(
                                      ledgerId:
                                          ref.watch(currentLedgerIdProvider),
                                      transactionDetails: ref
                                              .watch(transactionDetailsProvider)
                                              .isEmpty
                                          ? null
                                          : ref.watch(
                                              transactionDetailsProvider),
                                      fromContactId:
                                          ref.watch(fromContactIdProvider),
                                      toContactId:
                                          ref.watch(toContactIdProvider),
                                      amount: ref.watch(amountProvider),
                                      isPayed: true,
                                      transactionType:
                                          ref.watch(transactionTypeProvider),
                                      timeOfTrans: ref.watch(dateProvider),
                                      billImage:
                                          ref.watch(imageProvider).path.isEmpty
                                              ? null
                                              : ref.watch(imageProvider),
                                      transactionId: ref
                                              .watch(transactionIdProvider)
                                              .isEmpty
                                          ? null
                                          : ref.watch(transactionIdProvider)));
                              Future.delayed(
                                const Duration(milliseconds: 100),
                                () => BlocProvider.of<CustomerBloc>(context)
                                    .add(CustomerEvent.getCustomerList(
                                  ledgerId: ref.watch(currentLedgerIdProvider),
                                )),
                              );
                            }
                          } else {
                            log('YesNo');

                            BlocProvider.of<TransactionsBloc>(context)
                                .add(TransactionsEvent.splittingPayment(
                              ledgerId: ref.watch(currentLedgerIdProvider),
                              fromContactId: ref.watch(fromContactIdProvider),
                              toContactId: ref.watch(toContactIdProvider),
                              amount: ref.watch(amountProvider),
                              primaryContactId:
                                  ref.watch(splittedAccountBalanceProvider),
                              transactionType:
                                  ref.watch(transactionTypeProvider),
                              timeOfTrans: ref.watch(dateProvider),
                              billImage: ref.watch(imageProvider).path.isEmpty
                                  ? null
                                  : ref.watch(imageProvider),
                              transactionId:
                                  ref.watch(transactionIdProvider).isEmpty
                                      ? null
                                      : ref.watch(transactionIdProvider),
                              transactionDetails:
                                  ref.watch(transactionDetailsProvider).isEmpty
                                      ? null
                                      : ref.watch(transactionDetailsProvider),
                            ));
                            Future.delayed(
                              const Duration(milliseconds: 100),
                              () => BlocProvider.of<CustomerBloc>(context)
                                  .add(CustomerEvent.getCustomerList(
                                ledgerId: ref.watch(currentLedgerIdProvider),
                              )),
                            );
                          }
                        } else if (isAddExpense &&
                            ref.watch(expenseTypeProvider) ==
                                ExpenseType.roll) {
                          BlocProvider.of<RollingBloc>(context).add(
                              RollingEvent.addRollingTransactions(
                                  rollingAccountId:
                                      ref.watch(toContactIdProvider),
                                  splittingAccountId:
                                      ref.watch(fromContactIdProvider),
                                  splittingPrimaryAccountId:
                                      ref.watch(splittedAccountBalanceProvider),
                                  amountRolled: ref.watch(amountProvider),
                                  transactionType:
                                      ref.watch(transactionTypeProvider),
                                  timeOfTrans: ref.watch(dateProvider),
                                  billImage:
                                      ref.watch(imageProvider).path.isEmpty
                                          ? null
                                          : ref.watch(imageProvider),
                                  userTransactionId:
                                      ref.watch(transactionIdProvider).isEmpty
                                          ? null
                                          : ref.watch(transactionIdProvider),
                                  transactionDetails: ref
                                          .watch(transactionDetailsProvider)
                                          .isEmpty
                                      ? null
                                      : ref.watch(transactionDetailsProvider),
                                  ledgerId:
                                      ref.watch(currentLedgerIdProvider)));
                        } else if (isSplittingBalance) {
                          if (double.parse(splitAmount) >=
                              ref.watch(amountProvider)) {
                            BlocProvider.of<TransactionsBloc>(context)
                                .add(TransactionsEvent.splittingBalanceAmount(
                              ledgerId: ref.watch(currentLedgerIdProvider),
                              primaryContactId:
                                  ref.watch(fromContactIdProvider),
                              toContactId: ref.watch(toContactIdProvider),
                              splitAmount: ref.watch(amountProvider),
                              transactionDetails:
                                  ref.watch(transactionDetailsProvider).isEmpty
                                      ? null
                                      : ref.watch(transactionDetailsProvider),
                              transactionType:
                                  ref.watch(transactionTypeProvider),
                              timeOfTrans: ref.watch(dateProvider),
                              billImage: ref.watch(imageProvider).path.isEmpty
                                  ? null
                                  : ref.watch(imageProvider),
                              userTransactionId:
                                  ref.watch(transactionIdProvider).isEmpty
                                      ? null
                                      : ref.watch(transactionIdProvider),
                            ));
                            Future.delayed(
                              const Duration(milliseconds: 100),
                              () => BlocProvider.of<CustomerBloc>(context)
                                  .add(CustomerEvent.getCustomerList(
                                ledgerId: ref.watch(currentLedgerIdProvider),
                              )),
                            );
                          } else {
                            isToGoBack = false;
                            //Give a toast that you dont have enough Balance
                            alertSnackbar(
                                context, 'You dont have enough Balance');
                          }
                        } else if (isRepay) {
                          if (ref
                                  .watch(repaySplittedContactIdProvider)
                                  .isNotEmpty &&
                              ref
                                  .watch(repayPrimaryContactIdProvider)
                                  .isNotEmpty &&
                              ref.watch(repayTotalAmountProvider) > 0.0) {
                            if (ref.watch(repayTotalAmountProvider) <
                                ref.watch(amountProvider)) {
                              isToGoBack = false;
                              //Give a toast that you dont have enough Balance
                              alertSnackbar(context,
                                  "Don't enter more than Total Repay Amount");
                            } else {
                              BlocProvider.of<RollingBloc>(context)
                                  .add(RollingEvent.rollingRepayments(
                                rollingAccountId: rollingAccountId,
                                splittingAccountId:
                                    ref.watch(repaySplittedContactIdProvider),
                                splittingPrimaryAccountId:
                                    ref.watch(repayPrimaryContactIdProvider),
                                amountRepaying: ref.watch(amountProvider),
                                transactionDetails: ref
                                        .watch(transactionDetailsProvider)
                                        .isEmpty
                                    ? null
                                    : ref.watch(transactionDetailsProvider),
                                transactionType:
                                    ref.watch(transactionTypeProvider),
                                timeOfTrans: ref.watch(dateProvider),
                                billImage: ref.watch(imageProvider).path.isEmpty
                                    ? null
                                    : ref.watch(imageProvider),
                                userTransactionId:
                                    ref.watch(transactionIdProvider).isEmpty
                                        ? null
                                        : ref.watch(transactionIdProvider),
                                ledgerId: ref.watch(currentLedgerIdProvider),
                              ));
                              Navigator.pop(context);
                            }
                          }
                        } else if (isLedgerRoll) {
                          BlocProvider.of<LedgerBloc>(context)
                              .add(LedgerEvent.addLedgerRollingTransactions(
                            rolledToLedgerId: ref.watch(toContactIdProvider),
                            rolledFromLedgerId:
                                ref.watch(fromContactIdProvider),
                            amountRolled: ref.watch(amountProvider),
                            transactionDetails:
                                ref.watch(transactionDetailsProvider).isEmpty
                                    ? null
                                    : ref.watch(transactionDetailsProvider),
                            transactionType: ref.watch(transactionTypeProvider),
                            timeOfTrans: ref.watch(dateProvider),
                            billImage: ref.watch(imageProvider).path.isEmpty
                                ? null
                                : ref.watch(imageProvider),
                            userTransactionId:
                                ref.watch(transactionIdProvider).isEmpty
                                    ? null
                                    : ref.watch(transactionIdProvider),
                          ));
                        }
                      } else {
                        BlocProvider.of<TransactionsBloc>(context).add(
                            TransactionsEvent.editTransactions(
                                ledgerId: ref.watch(currentLedgerIdProvider),
                                amount: ref.watch(amountProvider),
                                transactionRealId: transactionRealId,
                                toId: ref.watch(toContactIdProvider),
                                transactionDetails: ref
                                        .watch(transactionDetailsProvider)
                                        .isEmpty
                                    ? null
                                    : ref.watch(transactionDetailsProvider),
                                transactionType:
                                    ref.watch(transactionTypeProvider),
                                timeOfTrans: ref.watch(dateProvider),
                                billImage: ref.watch(imageProvider).path.isEmpty
                                    ? null
                                    : ref.watch(imageProvider),
                                transactionId:
                                    ref.watch(transactionIdProvider).isEmpty
                                        ? null
                                        : ref.watch(transactionIdProvider),
                                primaryContactId: primaryContactId));
                        Future.delayed(
                          const Duration(milliseconds: 100),
                          () => BlocProvider.of<CustomerBloc>(context)
                              .add(CustomerEvent.getCustomerList(
                            ledgerId: ref.watch(currentLedgerIdProvider),
                          )),
                        );
                        Navigator.pop(context);
                      }
                    }

                    if (isToGoBack) {
                      Navigator.pop(context);
                    }
                  },
                  child: Center(
                      child: Text(
                    isPay ? 'PAY' : 'SAVE',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        letterSpacing: .5,
                        fontSize: size.width * 0.04,
                        color: LinqPeColors.kWhiteColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  )),
                ),
              ),
            );
          },
        );
      },
    );
  }
}

class AttachBillRow extends ConsumerWidget {
  const AttachBillRow({
    required this.size,
    super.key,
  });
  final Size size;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final imageFile = ref.watch(imageProvider);
    return Container(
      margin: EdgeInsets.only(right: size.width * 0.04),
      width: size.width * 0.35,
      height: size.height * 0.05,
      decoration: BoxDecoration(color: LinqPeColors.kWhiteColor, boxShadow: [
        BoxShadow(
            color: LinqPeColors.kBlackColor.withOpacity(0.5),
            spreadRadius: 0.01,
            offset: const Offset(0.3, 1))
      ]),
      child: InkWell(
        onTap: () {
          pickImage(ref);
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Icon(Icons.camera_alt),
            imageFile.path.isEmpty
                ? const Text(
                    'Attach bills',
                    style: TextStyle(fontWeight: FontWeight.w500),
                  )
                : Image.file(imageFile),
          ],
        ),
      ),
    );
  }

  Future<void> pickImage(WidgetRef ref) async {
    final ImagePicker picker = ImagePicker();
    XFile? pickedFile;

    try {
      pickedFile = await picker.pickImage(source: ImageSource.gallery);
    } catch (e) {
      print("Error picking image: $e");
    }

    if (pickedFile != null) {
      File image = File(pickedFile.path);
      addImage(image, ref);
    }
  }
}

class DatePickerWidget extends ConsumerWidget {
  const DatePickerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SfDateRangePicker(
      onSelectionChanged: (value) {
        log('Value${value.value}');
        addTime(value.value, ref);
        Navigator.pop(context);
      },
    );
  }
}

class TimeWidget extends ConsumerWidget {
  const TimeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    DateTime dateTime = ref.watch(dateProvider);

    return Text(
      '${dateTime.day} ${LinqPeList.monthNames[dateTime.month - 1]} ${dateTime.year}',
      style: const TextStyle(fontWeight: FontWeight.w500),
    );
  }
}

class SplitListBalanceWidget extends ConsumerWidget {
  const SplitListBalanceWidget({super.key, required this.isLedgerRoll});
  final bool isLedgerRoll;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final Size size = MediaQuery.of(context).size;
    final fromId = ref.watch(fromContactIdProvider);
    //   WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
    // if (ref.watch(expenseTypeProvider) ==
    //                                     ExpenseType.roll) {
    //                               addsplitttedAccountBalance(,ref);
    //                             }

    //   });

    return BlocBuilder<LedgerBloc, LedgerState>(
      builder: (context, ledgerstate) {
        List<LedgerDTO> ledgerList = [];
        if (ledgerstate is displayLedgers) {
          ledgerList = ledgerstate.ledgerList;
        }
        return BlocBuilder<SplittedBloc, SplittedState>(
          builder: (context, state) {
            List<SplittedAccountsModelDTO> splittedAccountsList = [];
            List<SplittedAccountsModelDTO> splitList = [];

            if (state is displaySplittedAccounts) {
              splittedAccountsList = state.splittedAccountList;

              if (fromId.isNotEmpty) {
                splitList = splittedAccountsList
                    .where(
                        (element) => element.splittedAccountContactId == fromId)
                    .toList();
              }
            }

            // if (splitList.isEmpty) {
            //   return const SizedBox();
            // }
            return BlocBuilder<ContactsBloc, ContactsState>(
              builder: (context, contactstate) {
                List<ContactsDTO> contactList = [];
                if (contactstate is displayContacts) {
                  contactList = contactstate.contactList;
                }
                //come here...
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: size.width * 0.03),
                  child: Material(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    color: LinqPeColors.kWhiteColor,
                    shadowColor: LinqPeColors.kBlackColor,
                    elevation: 2,
                    child: Padding(
                      padding: EdgeInsets.all(size.width * 0.02),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                          ref.watch(expenseTypeProvider) == ExpenseType.roll
                              ? const SizedBox()
                              : Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    SizedBox(
                                      width: size.width * 0.4,
                                      child: Text(
                                        isLedgerRoll
                                            ? 'Balance'
                                            : 'Primary Balance',
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
                                    splitList.isEmpty
                                        ? SizedBox(
                                            width: size.width * 0.3,
                                            child: Text(
                                              isLedgerRoll
                                                  ? ledgerList.indexWhere(
                                                              (element) =>
                                                                  element
                                                                      .ledgerId ==
                                                                  fromId) <
                                                          0
                                                      ? '0.0'
                                                      : ledgerList[ledgerList
                                                              .indexWhere(
                                                                  (element) =>
                                                                      element
                                                                          .ledgerId ==
                                                                      fromId)]
                                                          .totalBlanceAmount
                                                          .toString()
                                                  : ref
                                                      .watch(
                                                          primaryPartyBalanceAmountProvider)
                                                      .toString(),
                                              style: TextStyle(
                                                  fontWeight: FontWeight.normal,
                                                  fontSize: size.width * 0.05,
                                                  color:
                                                      LinqPeColors.kBlackColor),
                                            ),
                                          )
                                        : RadioBoxWidget(
                                            transactionName: ref
                                                .watch(
                                                    primaryPartyBalanceAmountProvider)
                                                .toString(),
                                            splittedAccountId: fromId,
                                            isSplittedbalanceRadio: true,
                                          )
                                  ],
                                ),
                          Column(
                              children: List.generate(
                                  splitList.length,
                                  (index) => Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          SizedBox(
                                            width: size.width * 0.4,
                                            child: Text(
                                              contactList
                                                  .where((element) =>
                                                      element.contactId ==
                                                      splitList[index]
                                                          .primaryAccountContactId)
                                                  .first
                                                  .displayName,
                                              style: GoogleFonts.poppins(
                                                textStyle: TextStyle(
                                                  letterSpacing: .1,
                                                  fontSize: size.width * 0.04,
                                                  color:
                                                      LinqPeColors.kBlackColor,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ),
                                          ),
                                          RadioBoxWidget(
                                            transactionName: splitList[index]
                                                .balanceAmt
                                                .toString(),
                                            splittedAccountId: splitList[index]
                                                .primaryAccountContactId,
                                            isSplittedbalanceRadio: true,
                                          )
                                          // Text(
                                          //   splitList[index].balanceAmt.toString(),
                                          //   style: GoogleFonts.roboto(
                                          //     textStyle: TextStyle(
                                          //       letterSpacing: .1,
                                          //       fontSize: size.width * 0.04,
                                          //       color: LinqPeColors.kBlackColor,
                                          //       fontWeight: FontWeight.w500,
                                          //     ),
                                          //   ),
                                          // )
                                        ],
                                      ))),
                        ],
                      ),
                    ),
                  ),
                );
              },
            );
          },
        );
      },
    );
  }
}
